SELECT
  O.O_ORDERPRIORITY,
  COUNT(*) AS ORDER_COUNT
FROM
  orders O
WHERE
  O.O_ORDERDate >= DATE '1996-10-01'
  AND O.O_ORDERDate < CAST((DATE '1996-10-01' + INTERVAL '3' MONTH) AS DATE)
  AND 
  EXISTS (
    SELECT
      *
    FROM
      lineitem L
    WHERE
      L.L_ORDERKEY = O.O_ORDERKEY
      AND L.L_COMMITDate < L.L_RECEIPTDate
  )
GROUP BY
  O.O_ORDERPRIORITY
ORDER BY
  O.O_ORDERPRIORITY;
