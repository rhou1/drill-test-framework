import io.thekraken.grok.api.*;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.io.IOException;
import org.slf4j.LoggerFactory;
import java.nio.file.*;
import java.nio.file.StandardWatchEventKinds;

import net.contentobjects.jnotify.JNotify;
import net.contentobjects.jnotify.JNotifyListener;
import java.util.*;

import org.apache.commons.io.input.*;
import java.io.File;

public class LogParser {

 static Grok g = new Grok();
 static BufferedWriter output;
 static int open=0;
 static String oldLogFile;
 static String newLogFile;
 // static TailerListener tListener;
 static TailerListener listener;
 static Tailer tailer;
 static String logDirectory;
 static class mythread extends Thread
 {
   String myaction,myrootPath,myoldName,mynewName;
   mythread(String action,String rootPath,String oldName,String newName)
   {
     myaction=action;
     myrootPath=rootPath;
     myoldName=oldName;
     mynewName=newName;
   }

   public void run()
   {
     open++;
     try{Thread.sleep(1000);}catch(Exception e){}
     open--;
   }
 }
 static public void sample(String path) throws Exception
 {
   // watch mask, specify events you care about,
   // or JNotify.FILE_ANY for all events.
   int mask = JNotify.FILE_CREATED  | 
              JNotify.FILE_DELETED  | 
              JNotify.FILE_MODIFIED | 
              JNotify.FILE_RENAMED;
   // watch subtree?
   boolean watchSubtree = false;
   // add actual watch
   // int watchID = JNotify.addWatch(path, mask, watchSubtree, new JNListener());
   int watchID = JNotify.addWatch(path, mask, watchSubtree, new Listener());
 }
 static void printaction(String action,String rootPath,String oldName,String newName)
 {
   (new mythread(action,rootPath,oldName,newName)).start();
 }
 // static class JNListener implements JNotifyListener
 static class Listener implements JNotifyListener
 {
   public void fileRenamed(int wd, String rootPath, String oldName, String newName)
   {
     //## System.out.println ("JNotifyListener threadid: " + Thread.currentThread().getId());
     printaction("rEnamed ",rootPath,oldName,newName);
     //## System.out.println ("fileRenamed, oldname: " + rootPath+"/"+oldName);
     //## System.out.println ("fileRenamed, newname: " + rootPath+"/"+newName);
     // handle file renaming
     oldLogFile = new String(rootPath + "/" + oldName);
     newLogFile = new String(rootPath + "/" + newName);
     try {
       output.write ("fileRenamed, oldname: " + oldLogFile + "\n");
       output.write ("fileRenamed, newname: " + newLogFile + "\n");
     } catch (Exception e) {
     }
     if ((oldLogFile != null) && (newLogFile != null)) {
       if (oldLogFile.equals(logDirectory + "/drillbit.log")) {
         //## System.out.println ("drillbit.log has been renamed to: " + newLogFile);
         try {
           output.write ("drillbit.log has been renamed to: " + newLogFile+"\n");
         } catch (Exception e) {
         }
         // sleep 10 seconds to allow Tailer to read the rest of the old log.
         // then stop tailing the old log and tail the new log
/*
         try {
           Thread.sleep(100000);
         } catch (Exception e) {
         }
         tailer.stop();
         //## System.out.println ("create new tListener for drillbit.log");
         try {
           output.write ("create new tListener for drillbit.log"+"\n");
         } catch (Exception e) {
         }
         // tailer = Tailer.create(new File(logDirectory + "/drillbit.log"), tListener, 1000, false);
         tailer = Tailer.create(new File(logDirectory + "/drillbit.log"), listener, 1000, false);
*/
       }
     }
   }
   public void fileModified(int wd, String rootPath, String name)
   {
     // printaction("mOdified ", rootPath,"",name);
   }
   public void fileDeleted(int wd, String rootPath, String name)
   {
     printaction("dEleted ", rootPath,"",name);
     try {
       output.write ("file deleted, name: " + rootPath + "/" + name + "\n");
     } catch (Exception e) {
     }
   }
   public void fileCreated(int wd, String rootPath, String name)
   {
     printaction("cReated ", rootPath,"",name);
     try {
       output.write ("file created, name: " + rootPath + "/" + name + "\n");
     } catch (Exception e) {
     }
   }
   void print(String msg)
   {
     System.err.println(msg);
   }
 }

  public static class MyTailerListener extends TailerListenerAdapter {
    public void handle(String line) {
      try{
        // output.write("MyTailerListener threadid: " + Thread.currentThread().getId()+"\n");

        g.compile("%{QUERY}");
        Match gm = g.match(line);
        gm.captures();

        if (gm.toJson().length() > 2) {
          output.write("QUERYSTRING:" + gm.toMap().get("QueryTextQueryID") + " " + gm.toMap().get("QueryString") + "\n");
        }

        g.compile("%{BATCHSIZEMB}");
        gm = g.match(line);
        gm.captures();

        if (gm.toJson().length() > 2) {
          output.write("BATCHSIZE:" + gm.toMap().get("BatchSizeQueryID") + " " + gm.toMap().get("BatchSizeMB") + "\n");
          output.newLine();
        }

        g.compile("%{ALLOCATEDSIZE}");
        gm = g.match(line);
        gm.captures();

        if (gm.toJson().length() > 2) {
          output.write("ALLOCATED:" + gm.toMap().get("BatchQueryID") + " " + gm.toMap().get("TotalAllocatedSize") + " " + gm.toMap().get("TotalBufferSize") + "\n");
          output.write("threadid: " + Thread.currentThread().getId() + " file inode: " + Files.getAttribute(tailer.getFile().toPath(), "unix:ino") + " " + line + "\n");
        }
        g.compile("%{ALLOCATEDSIZE2}");
        gm = g.match(line);
        gm.captures();

        if (gm.toJson().length() > 2) {
          output.write("ALLOCATED2:" + gm.toMap().get("BatchQueryID") + " " + gm.toMap().get("TotalAllocatedSize") + " " + gm.toMap().get("TotalBufferSize" + "\n"));
        }
      } catch (Exception e) {
        System.err.println("Error: " + e.getMessage());
      } 
    }
  }

  public static class ProcessorHook extends Thread {
    @Override
    public void run() {
      try {
        output.flush();
        output.close();
      } catch (Exception e) {
        //## System.out.println ("Error: " + e.getMessage());
      }
      tailer.stop();
    }
  }

  public static void main(String[] args) throws InterruptedException {

    logDirectory = args[0];
    Runtime.getRuntime().addShutdownHook (new ProcessorHook());

    try {
      output = new BufferedWriter(new FileWriter("/opt/logparser/out.json"));
      output.write("file started\n");
      output.write ("create new tListener for drillbit.log"+"\n");
    } catch (Exception e) {
      //## System.out.println ("Error: " + e.getMessage());
    }
    // tListener = new MyTailerListener();
    listener = new MyTailerListener();
    tailer = Tailer.create(new File(logDirectory + "/drillbit.log"), listener, 1000, true);

    // set up jnotify to watch log files
    try {
      sample("/opt/mapr/drill/drill-1.13.0-mapr.v6.prepare/logs");
    } catch (Exception e) {
                 System.err.println("Error: " + e.getMessage());
    }

    try {
      g = Grok.create("/opt/logparser/patterns/patterns");
      g.addPattern("QUERYID", "[a-zA-Z0-9-]+");
      g.addPattern("QUERY", "^.*\\[%{QUERYID:QueryTextQueryID}:foreman\\].*Query text for query id %{QUERYID}: %{DATA:QueryString}$");
      g.compile("%{QUERY}");
      g.addPattern("BATCHSIZEMB", "^.*\\[%{QUERYID:BatchSizeQueryID}:frag:%{NUMBER}:%{NUMBER}\\].*BATCH_STATS: The Parquet reader batch memory has been set to \\[%{NUMBER:BatchSizeMB}\\] byte.*$");
      g.compile("%{BATCHSIZEMB}");

      g.addPattern("OPERATOR", "[A-Z_]+");
      g.addPattern("ALLOCATEDSIZE", "^.*BATCH_STATS: Originator: \\[%{QUERYID:BatchQueryID}:%{NUMBER}:%{NUMBER}:%{NUMBER}:\\[%{OPERATOR:Operator}\\].*\\], Num Recs: \\[%{NUMBER:NumRecs}\\], Total Allocated Size: \\[%{NUMBER:TotalAllocatedSize}\\], Total Buffer Size: \\[%{NUMBER:TotalBufferSize}\\], Total Paylod Byte: \\[%{NUMBER:TotalPaylodByte}\\].*$");
      g.compile("%{ALLOCATEDSIZE}");
      g.addPattern("ALLOCATEDSIZE2", "^.*BATCH_STATS: Originator: \\[%{QUERYID:BatchQueryID}:%{NUMBER}:%{NUMBER}:%{NUMBER}:\\[%{OPERATOR:Operator}\\].*\\], Num Recs: \\[%{NUMBER:NumRecs}\\], Total Allocated Size: \\[%{NUMBER:TotalAllocatedSize}\\], Total Buffer Size: \\[%{NUMBER:TotalBufferSize}\\], Total Payload Byte: \\[%{NUMBER:TotalPayloadByte}\\].*$");
      g.compile("%{ALLOCATEDSIZE}2");

    } catch (Exception e) {
                 System.err.println("Error2: " + e.getMessage());
    }

    while(true) {
      Thread.sleep(10000);
    }

  }


}
