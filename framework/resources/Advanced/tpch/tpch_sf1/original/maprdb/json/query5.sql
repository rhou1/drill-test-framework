SELECT
  N.N_NAME,
  SUM(L.L_EXTENDEDPRICE * (1 - L.L_DISCOUNT)) AS REVENUE
FROM
  customer C,
  orders O,
  lineitem L,
  supplier S,
  nation N,
  region R
WHERE
  C.C_CUSTKEY = O.O_CUSTKEY
  AND L.L_ORDERKEY = O.O_ORDERKEY
  AND L.L_SUPPKEY = S.S_SUPPKEY
  AND C.C_NATIONKEY = S.S_NATIONKEY
  AND S.S_NATIONKEY = N.N_NATIONKEY
  AND N.N_REGIONKEY = R.R_REGIONKEY
  AND R.R_NAME = 'EUROPE'
  AND O.O_ORDERDate >= DATE '1997-01-01'
  AND O.O_ORDERDate < CAST((DATE '1997-01-01' + INTERVAL '1' YEAR) AS DATE)
GROUP BY
  N.N_NAME
ORDER BY
  REVENUE DESC;
