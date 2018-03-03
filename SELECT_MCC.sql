SELECT
  ((-total_dw_net_euro_acq_ic_fee_amt/total_euro_amount)*100)::numeric(10,2) as "СТАВКА ЕВРО, "
  FROM mc.unload_06
  WHERE mcc = 5814 AND total_euro_amount != 0
  GROUP BY (((-total_dw_net_euro_acq_ic_fee_amt/total_euro_amount)*100)::numeric(10,2))
  ORDER BY ((-total_dw_net_euro_acq_ic_fee_amt/total_euro_amount)*100)::numeric(10,2) ASC
 
