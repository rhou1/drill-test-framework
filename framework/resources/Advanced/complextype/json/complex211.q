select t.gbyi, avg(t.oooi.oa.oab.oabc) avgoooi from `complex.json` t group by t.gbyi having avg(t.oooi.oa.oab.oabc) <> 499612.41678741615 order by avgoooi;