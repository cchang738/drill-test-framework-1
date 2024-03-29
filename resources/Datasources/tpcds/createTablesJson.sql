alter session set `store.format` = 'json';

use dfs.tpcds_sf1_json;

create table customer as select 
 case when (columns[0]='') then cast(null as integer) else cast(columns[0] as integer) end as c_customer_sk, 
 case when (columns[1]='') then cast(null as varchar(200)) else cast(columns[1] as varchar(200)) end as c_customer_id, 
 case when (columns[2]='') then cast(null as integer) else cast(columns[2] as integer) end as c_current_cdemo_sk, 
 case when (columns[3]='') then cast(null as integer) else cast(columns[3] as integer) end as c_current_hdemo_sk, 
 case when (columns[4]='') then cast(null as integer) else cast(columns[4] as integer) end as c_current_addr_sk, 
 case when (columns[5]='') then cast(null as integer) else cast(columns[5] as integer) end as c_first_shipto_date_sk, 
 case when (columns[6]='') then cast(null as integer) else cast(columns[6] as integer) end as c_first_sales_date_sk, 
 case when (columns[7]='') then cast(null as varchar(200)) else cast(columns[7] as varchar(200)) end as c_salutation, 
 case when (columns[8]='') then cast(null as varchar(200)) else cast(columns[8] as varchar(200)) end as c_first_name, 
 case when (columns[9]='') then cast(null as varchar(200)) else cast(columns[9] as varchar(200)) end as c_last_name, 
 case when (columns[10]='') then cast(null as varchar(200)) else cast(columns[10] as varchar(200)) end as c_preferred_cust_flag, 
 case when (columns[11]='') then cast(null as integer) else cast(columns[11] as integer) end as c_birth_day, 
 case when (columns[12]='') then cast(null as integer) else cast(columns[12] as integer) end as c_birth_month, 
 case when (columns[13]='') then cast(null as integer) else cast(columns[13] as integer) end as c_birth_year, 
 case when (columns[14]='') then cast(null as varchar(200)) else cast(columns[14] as varchar(200)) end as c_birth_country, 
 case when (columns[15]='') then cast(null as varchar(200)) else cast(columns[15] as varchar(200)) end as c_login, 
 case when (columns[16]='') then cast(null as varchar(200)) else cast(columns[16] as varchar(200)) end as c_email_address, 
 case when (columns[17]='') then cast(null as varchar(200)) else cast(columns[17] as varchar(200)) end as c_last_review_date 
from dfs.`/drill/testdata/tpcds_sf1/text/customer.dat`;

create table customer_address as select  
case when (columns[0]='') then cast(null as integer) else cast(columns[0] as integer) end  as ca_address_sk, 
case when (columns[1]='') then cast(null as varchar(200)) else cast(columns[1] as varchar(200)) end as ca_address_id, 
case when (columns[2]='') then cast(null as varchar(200)) else cast(columns[2] as varchar(200)) end as ca_street_number, 
case when (columns[3]='') then cast(null as varchar(200)) else cast(columns[3] as varchar(200)) end as ca_street_name, 
case when (columns[4]='') then cast(null as varchar(200)) else cast(columns[4] as varchar(200)) end as ca_street_type, 
case when (columns[5]='') then cast(null as varchar(200)) else cast(columns[5] as varchar(200)) end as ca_suite_number, 
case when (columns[6]='') then cast(null as varchar(200)) else cast(columns[6] as varchar(200)) end as ca_city, 
case when (columns[7]='') then cast(null as varchar(200)) else cast(columns[7] as varchar(200)) end as ca_county, 
case when (columns[8]='') then cast(null as varchar(200)) else cast(columns[8] as varchar(200)) end as ca_state, 
case when (columns[9]='') then cast(null as varchar(200)) else cast(columns[9] as varchar(200)) end as ca_zip, 
case when (columns[10]='') then cast(null as varchar(200)) else cast(columns[10] as varchar(200)) end as ca_country, 
case when (columns[11]='') then cast(null as integer) else cast(columns[11] as integer) end  as ca_gmt_offset, 
case when (columns[12]='') then cast(null as varchar(200)) else cast(columns[12] as varchar(200)) end as ca_location_type 
from dfs.`/drill/testdata/tpcds_sf1/text/customer_address.dat`;

create table customer_demographics as select 
case when (columns[0]='') then cast(null as integer) else cast(columns[0] as integer) end as cd_demo_sk, 
case when (columns[1]='') then cast(null as varchar(200)) else cast(columns[1] as varchar(200)) end as cd_gender , 
case when (columns[2]='') then cast(null as varchar(200)) else cast(columns[2] as varchar(200)) end as cd_marital_status, 
case when (columns[3]='') then cast(null as varchar(200)) else cast(columns[3] as varchar(200)) end as cd_education_status, 
case when (columns[4]='') then cast(null as integer) else cast(columns[4] as integer) end as cd_purchase_estimate, 
case when (columns[5]='') then cast(null as varchar(200)) else cast(columns[5] as varchar(200)) end as cd_credit_rating, 
case when (columns[6]='') then cast(null as integer) else cast(columns[6] as integer) end as cd_dep_count, 
case when (columns[7]='') then cast(null as integer) else cast(columns[7] as integer) end as cd_dep_employed_count, 
case when (columns[8]='') then cast(null as integer) else cast(columns[8] as integer) end as cd_dep_college_count 
from dfs.`/drill/testdata/tpcds_sf1/text/customer_demographics.dat`;

create table household_demographics as select 
case when (columns[0]='') then cast(null as integer) else cast(columns[0] as integer) end as hd_demo_sk,
case when (columns[1]='') then cast(null as integer) else cast(columns[1] as integer) end  as hd_income_band_sk, 
case when (columns[2]='') then cast(null as varchar(200)) else cast(columns[2] as varchar(200)) end as hd_buy_potential, 
case when (columns[3]='') then cast(null as integer) else cast(columns[3] as integer) end  as hd_dep_count, 
case when (columns[4]='') then cast(null as integer) else cast(columns[4] as integer) end  as hd_vehicle_count 
from dfs.`/drill/testdata/tpcds_sf1/text/household_demographics.dat`;

create table item as select 
case when (columns[0]='') then cast(null as integer) else cast(columns[0] as integer) end as i_item_sk, 
case when (columns[1]='') then cast(null as varchar(200)) else cast(columns[1] as varchar(200))  end as i_item_id, 
case when (columns[2]='') then cast(null as date) else cast(columns[2] as date) end as i_rec_start_date, 
case when (columns[3]='') then cast(null as date) else cast(columns[3] as date) end as i_rec_end_date, 
case when (columns[4]='') then cast(null as varchar(200)) else cast(columns[4] as varchar(200))  end as i_item_desc, 
case when (columns[5]='') then cast(null as double) else cast(columns[5] as double) end as i_current_price, 
case when (columns[6]='') then cast(null as double) else cast(columns[6] as double) end as i_wholesale_cost, 
case when (columns[7]='') then cast(null as integer) else cast(columns[7] as integer) end as i_brand_id, 
case when (columns[8]='') then cast(null as varchar(200)) else cast(columns[8] as varchar(200))  end as i_brand, 
case when (columns[9]='') then cast(null as integer) else cast(columns[9] as integer) end as i_class_id, 
case when (columns[10]='') then cast(null as varchar(200)) else cast(columns[10] as varchar(200))  end as i_class, 
case when (columns[11]='') then cast(null as integer) else cast(columns[11] as integer) end as i_category_id, 
case when (columns[12]='') then cast(null as varchar(200)) else cast(columns[12] as varchar(200))  end as i_category, 
case when (columns[13]='') then cast(null as integer) else cast(columns[13] as integer) end as i_manufact_id, 
case when (columns[14]='') then cast(null as varchar(200)) else cast(columns[14] as varchar(200))  end as i_manufact, 
case when (columns[15]='') then cast(null as varchar(200)) else cast(columns[15] as varchar(200))  end as i_size, 
case when (columns[16]='') then cast(null as varchar(200)) else cast(columns[16] as varchar(200))  end as i_formulation, 
case when (columns[17]='') then cast(null as varchar(200)) else cast(columns[17] as varchar(200))  end as i_color, 
case when (columns[18]='') then cast(null as varchar(200)) else cast(columns[18] as varchar(200))  end as i_units, 
case when (columns[19]='') then cast(null as varchar(200)) else cast(columns[19] as varchar(200))  end as i_container, 
case when (columns[20]='') then cast(null as integer) else cast(columns[20] as integer) end as i_manager_id, 
case when (columns[21]='') then cast(null as varchar(200)) else cast(columns[21] as varchar(200))  end as i_product_name 
from dfs.`/drill/testdata/tpcds_sf1/text/item.dat`;

create table promotion as select 
case when (columns[0]='') then cast(null as integer) else cast(columns[0] as integer) end as p_promo_sk, 
case when (columns[1]='') then cast(null as varchar(200)) else cast(columns[1] as varchar(200)) end as p_promo_id,
case when (columns[2]='') then cast(null as integer) else cast(columns[2] as integer) end as p_start_date_sk, 
case when (columns[3]='') then cast(null as integer) else cast(columns[3] as integer) end as p_end_date_sk, 
case when (columns[4]='') then cast(null as integer) else cast(columns[4] as integer) end as p_item_sk, 
case when (columns[5]='') then cast(null as double) else cast(columns[5] as double) end as p_cost, 
case when (columns[6]='') then cast(null as integer) else cast(columns[6] as integer) end as p_response_target, 
case when (columns[7]='') then cast(null as varchar(200)) else cast(columns[7] as varchar(200)) end as p_promo_name, 
case when (columns[8]='') then cast(null as varchar(200)) else cast(columns[8] as varchar(200)) end as p_channel_dmail,
case when (columns[9]='') then cast(null as varchar(200)) else cast(columns[9] as varchar(200)) end as p_channel_email, 
case when (columns[10]='') then cast(null as varchar(200)) else cast(columns[10] as varchar(200)) end as p_channel_catalog, 
case when (columns[11]='') then cast(null as varchar(200)) else cast(columns[11] as varchar(200)) end as p_channel_tv, 
case when (columns[12]='') then cast(null as varchar(200)) else cast(columns[12] as varchar(200)) end as p_channel_radio, 
case when (columns[13]='') then cast(null as varchar(200)) else cast(columns[13] as varchar(200)) end as p_channel_press, 
case when (columns[14]='') then cast(null as varchar(200)) else cast(columns[14] as varchar(200)) end as p_channel_event, 
case when (columns[15]='') then cast(null as varchar(200)) else cast(columns[15] as varchar(200)) end as p_channel_demo, 
case when (columns[16]='') then cast(null as varchar(200)) else cast(columns[16] as varchar(200)) end as p_channel_details, 
case when (columns[17]='') then cast(null as varchar(200)) else cast(columns[17] as varchar(200)) end as p_purpose, 
case when (columns[18]='') then cast(null as varchar(200)) else cast(columns[18] as varchar(200)) end as p_discount_active 
from dfs.`/drill/testdata/tpcds_sf1/text/promotion.dat`;

create table time_dim as select 
case when (columns[0]='') then cast(null as integer) else cast(columns[0] as integer) end as t_time_sk, 
case when (columns[1]='') then cast(null as varchar(200)) else cast(columns[1] as varchar(200)) end as t_time_id, 
case when (columns[2]='') then cast(null as integer) else cast(columns[2] as integer) end as t_time, 
case when (columns[3]='') then cast(null as integer) else cast(columns[3] as integer) end as t_hour, 
case when (columns[4]='') then cast(null as integer) else cast(columns[4] as integer) end as t_minute, 
case when (columns[5]='') then cast(null as integer) else cast(columns[5] as integer) end as t_second, 
case when (columns[6]='') then cast(null as varchar(200)) else cast(columns[6] as varchar(200)) end as t_am_pm, 
case when (columns[7]='') then cast(null as varchar(200)) else cast(columns[7] as varchar(200)) end as t_shift, 
case when (columns[8]='') then cast(null as varchar(200)) else cast(columns[8] as varchar(200)) end as t_sub_shift , 
case when (columns[9]='') then cast(null as varchar(200)) else cast(columns[9] as varchar(200)) end as t_meal_time 
from dfs.`/drill/testdata/tpcds_sf1/text/time_dim.dat`;

create table date_dim as select 
case when (columns[0]='') then cast(null as integer) else cast(columns[0] as integer) end as d_date_sk, 
case when (columns[1]='') then cast(null as varchar(200)) else cast(columns[1] as varchar(200)) end as d_date_id, 
case when (columns[2]='') then cast(null as varchar(200)) else cast(columns[2] as varchar(200)) end as d_date, 
case when (columns[3]='') then cast(null as integer) else cast(columns[3] as integer) end as d_month_seq, 
case when (columns[4]='') then cast(null as integer) else cast(columns[4] as integer) end as d_week_seq, 
case when (columns[5]='') then cast(null as integer) else cast(columns[5] as integer) end as d_quarter_seq, 
case when (columns[6]='') then cast(null as integer) else cast(columns[6] as integer) end as d_year, 
case when (columns[7]='') then cast(null as integer) else cast(columns[7] as integer) end as d_dow, 
case when (columns[8]='') then cast(null as integer) else cast(columns[8] as integer) end as d_moy, 
case when (columns[9]='') then cast(null as integer) else cast(columns[9] as integer) end as d_dom, 
case when (columns[10]='') then cast(null as integer) else cast(columns[10] as integer) end as d_qoy, 
case when (columns[11]='') then cast(null as integer) else cast(columns[11] as integer) end as d_fy_year, 
case when (columns[12]='') then cast(null as integer) else cast(columns[12] as integer) end as d_fy_quarter_seq, 
case when (columns[13]='') then cast(null as integer) else cast(columns[13] as integer) end as s_fy_week_seq, 
case when (columns[14]='') then cast(null as varchar(200)) else cast(columns[14] as varchar(200)) end as d_day_name, 
case when (columns[15]='') then cast(null as varchar(200)) else cast(columns[15] as varchar(200)) end as d_quarter_name, 
case when (columns[16]='') then cast(null as varchar(200)) else cast(columns[16] as varchar(200)) end as d_holiday, 
case when (columns[17]='') then cast(null as varchar(200)) else cast(columns[17] as varchar(200)) end as d_weekend, 
case when (columns[18]='') then cast(null as varchar(200)) else cast(columns[18] as varchar(200)) end as d_following_holiday, 
case when (columns[19]='') then cast(null as integer) else cast(columns[19] as integer) end as d_first_dom, 
case when (columns[20]='') then cast(null as integer) else cast(columns[20] as integer) end as d_last_dom, 
case when (columns[21]='') then cast(null as integer) else cast(columns[21] as integer) end as d_same_day_ly, 
case when (columns[22]='') then cast(null as integer) else cast(columns[22] as integer) end as d_same_day_lq, 
case when (columns[23]='') then cast(null as varchar(200)) else cast(columns[23] as varchar(200)) end as d_current_day, 
case when (columns[24]='') then cast(null as varchar(200)) else cast(columns[24] as varchar(200)) end as d_current_week, 
case when (columns[25]='') then cast(null as varchar(200)) else cast(columns[25] as varchar(200)) end as d_current_month, 
case when (columns[26]='') then cast(null as varchar(200)) else cast(columns[26] as varchar(200)) end as d_current_quarter, 
case when (columns[27]='') then cast(null as varchar(200)) else cast(columns[27] as varchar(200)) end as d_current_year 
from dfs.`/drill/testdata/tpcds_sf1/text/date_dim.dat`;

create table store as select 
case when (columns[0]='') then cast(null as integer) else cast(columns[0] as integer) end as s_store_sk, 
case when (columns[1]='') then cast(null as varchar(200)) else cast(columns[1] as varchar(200)) end as s_store_id, 
case when (columns[2]='') then cast(null as varchar(200)) else cast(columns[2] as varchar(200)) end as s_rec_start_date, 
case when (columns[3]='') then cast(null as varchar(200)) else cast(columns[3] as varchar(200)) end as s_rec_end_date, 
case when (columns[4]='') then cast(null as integer) else cast(columns[4] as integer) end as s_closed_date_sk, 
case when (columns[5]='') then cast(null as varchar(200)) else cast(columns[5] as varchar(200)) end as s_store_name, 
case when (columns[6]='') then cast(null as integer) else cast(columns[6] as integer) end as s_number_employees, 
case when (columns[7]='') then cast(null as integer) else cast(columns[7] as integer) end as s_floor_space, 
case when (columns[8]='') then cast(null as varchar(200)) else cast(columns[8] as varchar(200)) end as s_hours,
case when (columns[9]='') then cast(null as varchar(200)) else cast(columns[9] as varchar(200)) end as s_manager, 
case when (columns[10]='') then cast(null as integer) else cast(columns[10] as integer) end as s_market_id, 
case when (columns[11]='') then cast(null as varchar(200)) else cast(columns[11] as varchar(200)) end as s_geography_class, 
case when (columns[12]='') then cast(null as varchar(200)) else cast(columns[12] as varchar(200)) end as s_market_desc, 
case when (columns[13]='') then cast(null as varchar(200)) else cast(columns[13] as varchar(200)) end as s_market_manager, 
case when (columns[14]='') then cast(null as integer) else cast(columns[14] as integer) end as s_division_id, 
case when (columns[15]='') then cast(null as varchar(200)) else cast(columns[15] as varchar(200)) end as s_division_name, 
case when (columns[16]='') then cast(null as integer) else cast(columns[16] as integer) end as s_company_id, 
case when (columns[17]='') then cast(null as varchar(200)) else cast(columns[17] as varchar(200)) end as s_company_name, 
case when (columns[18]='') then cast(null as varchar(200)) else cast(columns[18] as varchar(200)) end as s_street_number, 
case when (columns[19]='') then cast(null as varchar(200)) else cast(columns[19] as varchar(200)) end as s_street_name, 
case when (columns[20]='') then cast(null as varchar(200)) else cast(columns[20] as varchar(200)) end as s_street_type, 
case when (columns[21]='') then cast(null as varchar(200)) else cast(columns[21] as varchar(200)) end as s_suite_number, 
case when (columns[22]='') then cast(null as varchar(200)) else cast(columns[22] as varchar(200)) end as s_city, 
case when (columns[23]='') then cast(null as varchar(200)) else cast(columns[23] as varchar(200)) end as s_county, 
case when (columns[24]='') then cast(null as varchar(200)) else cast(columns[24] as varchar(200)) end as s_state, 
case when (columns[25]='') then cast(null as varchar(200)) else cast(columns[25] as varchar(200)) end as s_zip, 
case when (columns[26]='') then cast(null as varchar(200)) else cast(columns[26] as varchar(200)) end as s_country, 
case when (columns[27]='') then cast(null as double) else cast(columns[27] as double) end as s_gmt_offset, 
case when (columns[28]='') then cast(null as double) else cast(columns[28] as double) end as s_tax_precentage 
from dfs.`/drill/testdata/tpcds_sf1/text/store.dat`;

create table store_sales as select 
case when (columns[0]='') then cast(null as integer) else cast(columns[0] as integer) end as ss_sold_date_sk, 
case when (columns[1]='') then cast(null as integer) else cast(columns[1] as integer) end as ss_sold_time_sk, 
case when (columns[2]='') then cast(null as integer) else cast(columns[2] as integer) end as ss_item_sk, 
case when (columns[3]='') then cast(null as integer) else cast(columns[3] as integer) end as ss_customer_sk, 
case when (columns[4]='') then cast(null as integer) else cast(columns[4] as integer) end as ss_cdemo_sk, 
case when (columns[5]='') then cast(null as integer) else cast(columns[5] as integer) end as ss_hdemo_sk, 
case when (columns[6]='') then cast(null as integer) else cast(columns[6] as integer) end as ss_addr_sk, 
case when (columns[7]='') then cast(null as integer) else cast(columns[7] as integer) end as ss_store_sk, 
case when (columns[8]='') then cast(null as integer) else cast(columns[8] as integer) end as ss_promo_sk, 
case when (columns[9]='') then cast(null as integer) else cast(columns[9] as integer) end as ss_ticket_number, 
case when (columns[10]='') then cast(null as integer) else cast(columns[10] as integer) end as ss_quantity, 
case when (columns[11]='') then cast(null as double) else cast(columns[11] as double) end as ss_wholesale_cost, 
case when (columns[12]='') then cast(null as double) else cast(columns[12] as double) end as ss_list_price, 
case when (columns[13]='') then cast(null as double) else cast(columns[13] as double) end as ss_sales_price, 
case when (columns[14]='') then cast(null as double) else cast(columns[14] as double) end as ss_ext_discount_amt, 
case when (columns[15]='') then cast(null as double) else cast(columns[15] as double) end as ss_ext_sales_price, 
case when (columns[16]='') then cast(null as double) else cast(columns[16] as double) end as ss_ext_wholesale_cost, 
case when (columns[17]='') then cast(null as double) else cast(columns[17] as double) end as ss_ext_list_price, 
case when (columns[18]='') then cast(null as double) else cast(columns[18] as double) end as ss_ext_tax, 
case when (columns[19]='') then cast(null as double) else cast(columns[19] as double) end as ss_coupon_amt, 
case when (columns[20]='') then cast(null as double) else cast(columns[20] as double) end as ss_net_paid, 
case when (columns[21]='') then cast(null as double) else cast(columns[21] as double) end as ss_net_paid_inc_tax, 
case when (columns[22]='') then cast(null as double) else cast(columns[22] as double) end as ss_net_profit 
from dfs.`/drill/testdata/tpcds_sf1/text/store_sales.dat`;

create table warehouse as select 
  case when (columns[0]='') then cast(null as integer) else cast(columns[0] as integer) end as w_warehouse_sk,
  case when (columns[1]='') then cast(null as varchar(200)) else cast(columns[1] as varchar(200)) end as w_warehouse_id,
  case when (columns[2]='') then cast(null as varchar(200)) else cast(columns[2] as varchar(200)) end as w_warehouse_name,
  case when (columns[3]='') then cast(null as integer) else cast(columns[3] as integer) end as w_warehouse_sq_ft,
  case when (columns[4]='') then cast(null as varchar(200)) else cast(columns[4] as varchar(200)) end as w_street_number,
  case when (columns[5]='') then cast(null as varchar(200)) else cast(columns[5] as varchar(200)) end as w_street_name,
  case when (columns[6]='') then cast(null as varchar(200)) else cast(columns[6] as varchar(200)) end as w_street_type,
  case when (columns[7]='') then cast(null as varchar(200)) else cast(columns[7] as varchar(200)) end as w_suite_number,
  case when (columns[8]='') then cast(null as varchar(200)) else cast(columns[8] as varchar(200)) end as w_city,
  case when (columns[9]='') then cast(null as varchar(200)) else cast(columns[9] as varchar(200)) end as w_county,
  case when (columns[10]='') then cast(null as varchar(200)) else cast(columns[10] as varchar(200)) end as w_state,
  case when (columns[11]='') then cast(null as varchar(200)) else cast(columns[11] as varchar(200)) end as w_zip,
  case when (columns[12]='') then cast(null as varchar(200)) else cast(columns[12] as varchar(200)) end as w_country,
  case when (columns[13]='') then cast(null as double) else cast(columns[13] as double) end as w_gmt_offset        
from dfs.`/drill/testdata/tpcds_sf1/text/warehouse.dat`;

create table ship_mode as select 
  case when (columns[0]='') then cast(null as integer) else cast(columns[0] as integer) end as sm_ship_mode_sk,
  case when (columns[1]='') then cast(null as varchar(200)) else cast(columns[1] as varchar(200)) end as sm_ship_mode_id,
  case when (columns[2]='') then cast(null as varchar(200)) else cast(columns[2] as varchar(200)) end as sm_type,
  case when (columns[3]='') then cast(null as varchar(200)) else cast(columns[3] as varchar(200)) end as sm_code,
  case when (columns[4]='') then cast(null as varchar(200)) else cast(columns[4] as varchar(200)) end as sm_carrier,
  case when (columns[5]='') then cast(null as varchar(200)) else cast(columns[5] as varchar(200)) end as sm_contract      
from dfs.`/drill/testdata/tpcds_sf1/text/ship_mode.dat`;

create table reason as select 
  case when (columns[0]='') then cast(null as integer) else cast(columns[0] as integer) end as r_reason_sk,
  case when (columns[1]='') then cast(null as varchar(200)) else cast(columns[1] as varchar(200)) end as r_reason_id,
  case when (columns[2]='') then cast(null as varchar(200)) else cast(columns[2] as varchar(200)) end as r_reason_desc  
from dfs.`/drill/testdata/tpcds_sf1/text/reason.dat`;

create table income_band as select 
  case when (columns[0]='') then cast(null as integer) else cast(columns[0] as integer) end as ib_income_band_sk,
  case when (columns[1]='') then cast(null as integer) else cast(columns[1] as integer) end as ib_lower_bound,
  case when (columns[2]='') then cast(null as integer) else cast(columns[2] as integer) end as ib_upper_bound          
from dfs.`/drill/testdata/tpcds_sf1/text/income_band.dat`;

create table call_center as select 
  case when (columns[0]='') then cast(null as integer) else cast(columns[0] as integer) end as cc_call_center_sk,
  case when (columns[1]='') then cast(null as varchar(200)) else cast(columns[1] as varchar(200)) end as cc_call_center_id,
  case when (columns[2]='') then cast(null as date) else cast(columns[2] as date) end as cc_rec_start_date,
  case when (columns[3]='') then cast(null as date) else cast(columns[3] as date) end as cc_rec_end_date,
  case when (columns[4]='') then cast(null as integer) else cast(columns[4] as integer) end as cc_closed_date_sk,
  case when (columns[5]='') then cast(null as integer) else cast(columns[5] as integer) end as cc_open_date_sk,
  case when (columns[6]='') then cast(null as varchar(200)) else cast(columns[6] as varchar(200)) end as cc_name,
  case when (columns[7]='') then cast(null as varchar(200)) else cast(columns[7] as varchar(200)) end as cc_class,
  case when (columns[8]='') then cast(null as integer) else cast(columns[8] as integer) end as cc_employees,
  case when (columns[9]='') then cast(null as integer) else cast(columns[9] as integer) end as cc_sq_ft,
  case when (columns[10]='') then cast(null as varchar(200)) else cast(columns[10] as varchar(200)) end as cc_hours,
  case when (columns[11]='') then cast(null as varchar(200)) else cast(columns[11] as varchar(200)) end as cc_manager,
  case when (columns[12]='') then cast(null as integer) else cast(columns[12] as integer) end as cc_mkt_id,
  case when (columns[13]='') then cast(null as varchar(200)) else cast(columns[13] as varchar(200)) end as cc_mkt_class,
  case when (columns[14]='') then cast(null as varchar(200)) else cast(columns[14] as varchar(200)) end as cc_mkt_desc,
  case when (columns[15]='') then cast(null as varchar(200)) else cast(columns[15] as varchar(200)) end as cc_market_manager,
  case when (columns[16]='') then cast(null as integer) else cast(columns[16] as integer) end as cc_division,
  case when (columns[17]='') then cast(null as varchar(200)) else cast(columns[17] as varchar(200)) end as cc_division_name,
  case when (columns[18]='') then cast(null as integer) else cast(columns[18] as integer) end as cc_company,
  case when (columns[19]='') then cast(null as varchar(200)) else cast(columns[19] as varchar(200)) end as cc_company_name,
  case when (columns[20]='') then cast(null as varchar(200)) else cast(columns[20] as varchar(200)) end as cc_street_number,
  case when (columns[21]='') then cast(null as varchar(200)) else cast(columns[21] as varchar(200)) end as cc_street_name,
  case when (columns[22]='') then cast(null as varchar(200)) else cast(columns[22] as varchar(200)) end as cc_street_type,
  case when (columns[23]='') then cast(null as varchar(200)) else cast(columns[23] as varchar(200)) end as cc_suite_number,
  case when (columns[24]='') then cast(null as varchar(200)) else cast(columns[24] as varchar(200)) end as cc_city,
  case when (columns[25]='') then cast(null as varchar(200)) else cast(columns[25] as varchar(200)) end as cc_county,
  case when (columns[26]='') then cast(null as varchar(200)) else cast(columns[26] as varchar(200)) end as cc_state,
  case when (columns[27]='') then cast(null as varchar(200)) else cast(columns[27] as varchar(200)) end as cc_zip,
  case when (columns[28]='') then cast(null as varchar(200)) else cast(columns[28] as varchar(200)) end as cc_country,
  case when (columns[29]='') then cast(null as double) else cast(columns[29] as double) end as cc_gmt_offset,
  case when (columns[30]='') then cast(null as double) else cast(columns[30] as double) end as cc_tax_percentage  
from dfs.`/drill/testdata/tpcds_sf1/text/call_center.dat`;

create table web_site as select 
  case when (columns[0]='') then cast(null as integer) else cast(columns[0] as integer) end as web_site_sk,
  case when (columns[1]='') then cast(null as varchar(200)) else cast(columns[1] as varchar(200)) end as web_site_id,
  case when (columns[2]='') then cast(null as date) else cast(columns[2] as date) end as web_rec_start_date,
  case when (columns[3]='') then cast(null as date) else cast(columns[3] as date) end as web_rec_end_date,
  case when (columns[4]='') then cast(null as varchar(200)) else cast(columns[4] as varchar(200)) end as web_name,
  case when (columns[5]='') then cast(null as integer) else cast(columns[5] as integer) end as web_open_date_sk,
  case when (columns[6]='') then cast(null as integer) else cast(columns[6] as integer) end as web_close_date_sk,
  case when (columns[7]='') then cast(null as varchar(200)) else cast(columns[7] as varchar(200)) end as web_class,
  case when (columns[8]='') then cast(null as varchar(200)) else cast(columns[8] as varchar(200)) end as web_manager,
  case when (columns[9]='') then cast(null as integer) else cast(columns[9] as integer) end as web_mkt_id,
  case when (columns[10]='') then cast(null as varchar(200)) else cast(columns[10] as varchar(200)) end as web_mkt_class,
  case when (columns[11]='') then cast(null as varchar(200)) else cast(columns[11] as varchar(200)) end as web_mkt_desc,
  case when (columns[12]='') then cast(null as varchar(200)) else cast(columns[12] as varchar(200)) end as web_market_manager,
  case when (columns[13]='') then cast(null as integer) else cast(columns[13] as integer) end as web_company_id,
  case when (columns[14]='') then cast(null as varchar(200)) else cast(columns[14] as varchar(200)) end as web_company_name,
  case when (columns[15]='') then cast(null as varchar(200)) else cast(columns[15] as varchar(200)) end as web_street_number,
  case when (columns[16]='') then cast(null as varchar(200)) else cast(columns[16] as varchar(200)) end as web_street_name,
  case when (columns[17]='') then cast(null as varchar(200)) else cast(columns[17] as varchar(200)) end as web_street_type,
  case when (columns[18]='') then cast(null as varchar(200)) else cast(columns[18] as varchar(200)) end as web_suite_number,
  case when (columns[19]='') then cast(null as varchar(200)) else cast(columns[19] as varchar(200)) end as web_city,
  case when (columns[20]='') then cast(null as varchar(200)) else cast(columns[20] as varchar(200)) end as web_county,
  case when (columns[21]='') then cast(null as varchar(200)) else cast(columns[21] as varchar(200)) end as web_state,
  case when (columns[22]='') then cast(null as varchar(200)) else cast(columns[22] as varchar(200)) end as web_zip,
  case when (columns[23]='') then cast(null as varchar(200)) else cast(columns[23] as varchar(200)) end as web_country,
  case when (columns[24]='') then cast(null as double) else cast(columns[24] as double) end as web_gmt_offset,
  case when (columns[25]='') then cast(null as double) else cast(columns[25] as double) end as web_tax_percentage 
from dfs.`/drill/testdata/tpcds_sf1/text/web_site.dat`;

create table store_returns as select 
  case when (columns[0]='') then cast(null as integer) else cast(columns[0] as integer) end as sr_returned_date_sk,
  case when (columns[1]='') then cast(null as integer) else cast(columns[1] as integer) end as sr_return_time_sk,
  case when (columns[2]='') then cast(null as integer) else cast(columns[2] as integer) end as sr_item_sk,
  case when (columns[3]='') then cast(null as integer) else cast(columns[3] as integer) end as sr_customer_sk,
  case when (columns[4]='') then cast(null as integer) else cast(columns[4] as integer) end as sr_cdemo_sk,
  case when (columns[5]='') then cast(null as integer) else cast(columns[5] as integer) end as sr_hdemo_sk,
  case when (columns[6]='') then cast(null as integer) else cast(columns[6] as integer) end as sr_addr_sk,
  case when (columns[7]='') then cast(null as integer) else cast(columns[7] as integer) end as sr_store_sk,
  case when (columns[8]='') then cast(null as integer) else cast(columns[8] as integer) end as sr_reason_sk,
  case when (columns[9]='') then cast(null as integer) else cast(columns[9] as integer) end as sr_ticket_number,
  case when (columns[10]='') then cast(null as integer) else cast(columns[10] as integer) end as sr_return_quantity,
  case when (columns[11]='') then cast(null as double) else cast(columns[11] as double) end as sr_return_amt,
  case when (columns[12]='') then cast(null as double) else cast(columns[12] as double) end as sr_return_tax,
  case when (columns[13]='') then cast(null as double) else cast(columns[13] as double) end as sr_return_amt_inc_tax,
  case when (columns[14]='') then cast(null as double) else cast(columns[14] as double) end as sr_fee,
  case when (columns[15]='') then cast(null as double) else cast(columns[15] as double) end as sr_return_ship_cost,
  case when (columns[16]='') then cast(null as double) else cast(columns[16] as double) end as sr_refunded_cash,
  case when (columns[17]='') then cast(null as double) else cast(columns[17] as double) end as sr_reversed_charge,
  case when (columns[18]='') then cast(null as double) else cast(columns[18] as double) end as sr_store_credit,
  case when (columns[19]='') then cast(null as double) else cast(columns[19] as double) end as sr_net_loss    
from dfs.`/drill/testdata/tpcds_sf1/text/store_returns.dat`;

create table web_page as select 
  case when (columns[0]='') then cast(null as integer) else cast(columns[0] as integer) end as wp_web_page_sk,
  case when (columns[1]='') then cast(null as varchar(200)) else cast(columns[1] as varchar(200)) end as wp_web_page_id,
  case when (columns[2]='') then cast(null as date) else cast(columns[2] as date) end as wp_rec_start_date,
  case when (columns[3]='') then cast(null as date) else cast(columns[3] as date) end as wp_rec_end_date,
  case when (columns[4]='') then cast(null as integer) else cast(columns[4] as integer) end as wp_creation_date_sk,
  case when (columns[5]='') then cast(null as integer) else cast(columns[5] as integer) end as wp_access_date_sk,
  case when (columns[6]='') then cast(null as varchar(200)) else cast(columns[6] as varchar(200)) end as wp_autogen_flag,
  case when (columns[7]='') then cast(null as integer) else cast(columns[7] as integer) end as wp_customer_sk,
  case when (columns[8]='') then cast(null as varchar(200)) else cast(columns[8] as varchar(200)) end as wp_url,
  case when (columns[9]='') then cast(null as varchar(200)) else cast(columns[9] as varchar(200)) end as wp_type,
  case when (columns[10]='') then cast(null as integer) else cast(columns[10] as integer) end as wp_char_count,
  case when (columns[11]='') then cast(null as integer) else cast(columns[11] as integer) end as wp_link_count,
  case when (columns[12]='') then cast(null as integer) else cast(columns[12] as integer) end as wp_image_count,
  case when (columns[13]='') then cast(null as integer) else cast(columns[13] as integer) end as wp_max_ad_count          
from dfs.`/drill/testdata/tpcds_sf1/text/web_page.dat`;

create table catalog_page as select 
  case when (columns[0]='') then cast(null as integer) else cast(columns[0] as integer) end as cp_catalog_page_sk,
  case when (columns[1]='') then cast(null as varchar(200)) else cast(columns[1] as varchar(200)) end as cp_catalog_page_id,
  case when (columns[2]='') then cast(null as integer) else cast(columns[2] as integer) end as cp_start_date_sk,
  case when (columns[3]='') then cast(null as integer) else cast(columns[3] as integer) end as cp_end_date_sk,
  case when (columns[4]='') then cast(null as varchar(200)) else cast(columns[4] as varchar(200)) end as cp_department,
  case when (columns[5]='') then cast(null as integer) else cast(columns[5] as integer) end as cp_catalog_number,
  case when (columns[6]='') then cast(null as integer) else cast(columns[6] as integer) end as cp_catalog_page_number,
  case when (columns[7]='') then cast(null as varchar(200)) else cast(columns[7] as varchar(200)) end as cp_description,
  case when (columns[8]='') then cast(null as varchar(200)) else cast(columns[8] as varchar(200)) end as cp_type         
from dfs.`/drill/testdata/tpcds_sf1/text/catalog_page.dat`;

create table inventory as select 
  case when (columns[0]='') then cast(null as integer) else cast(columns[0] as integer) end as inv_date_sk,
  case when (columns[1]='') then cast(null as integer) else cast(columns[1] as integer) end as inv_item_sk,
  case when (columns[2]='') then cast(null as integer) else cast(columns[2] as integer) end as inv_warehouse_sk,
  case when (columns[3]='') then cast(null as integer) else cast(columns[3] as integer) end as inv_quantity_on_hand            
from dfs.`/drill/testdata/tpcds_sf1/text/inventory.dat`;

create table catalog_returns as select 
  case when (columns[0]='') then cast(null as integer) else cast(columns[0] as integer) end as cr_returned_date_sk,
  case when (columns[1]='') then cast(null as integer) else cast(columns[1] as integer) end as cr_returned_time_sk,
  case when (columns[2]='') then cast(null as integer) else cast(columns[2] as integer) end as cr_item_sk,
  case when (columns[3]='') then cast(null as integer) else cast(columns[3] as integer) end as cr_refunded_customer_sk,
  case when (columns[4]='') then cast(null as integer) else cast(columns[4] as integer) end as cr_refunded_cdemo_sk,
  case when (columns[5]='') then cast(null as integer) else cast(columns[5] as integer) end as cr_refunded_hdemo_sk,
  case when (columns[6]='') then cast(null as integer) else cast(columns[6] as integer) end as cr_refunded_addr_sk,
  case when (columns[7]='') then cast(null as integer) else cast(columns[7] as integer) end as cr_returning_customer_sk,
  case when (columns[8]='') then cast(null as integer) else cast(columns[8] as integer) end as cr_returning_cdemo_sk,
  case when (columns[9]='') then cast(null as integer) else cast(columns[9] as integer) end as cr_returning_hdemo_sk,
  case when (columns[10]='') then cast(null as integer) else cast(columns[10] as integer) end as cr_returning_addr_sk,
  case when (columns[11]='') then cast(null as integer) else cast(columns[11] as integer) end as cr_call_center_sk,
  case when (columns[12]='') then cast(null as integer) else cast(columns[12] as integer) end as cr_catalog_page_sk,
  case when (columns[13]='') then cast(null as integer) else cast(columns[13] as integer) end as cr_ship_mode_sk,
  case when (columns[14]='') then cast(null as integer) else cast(columns[14] as integer) end as cr_warehouse_sk,
  case when (columns[15]='') then cast(null as integer) else cast(columns[15] as integer) end as cr_reason_sk,
  case when (columns[16]='') then cast(null as integer) else cast(columns[16] as integer) end as cr_order_number,
  case when (columns[17]='') then cast(null as integer) else cast(columns[17] as integer) end as cr_return_quantity,
  case when (columns[18]='') then cast(null as double) else cast(columns[18] as double) end as cr_return_amount,
  case when (columns[19]='') then cast(null as double) else cast(columns[19] as double) end as cr_return_tax,
  case when (columns[20]='') then cast(null as double) else cast(columns[20] as double) end as cr_return_amt_inc_tax,
  case when (columns[21]='') then cast(null as double) else cast(columns[21] as double) end as cr_fee,
  case when (columns[22]='') then cast(null as double) else cast(columns[22] as double) end as cr_return_ship_cost,
  case when (columns[23]='') then cast(null as double) else cast(columns[23] as double) end as cr_refunded_cash,
  case when (columns[24]='') then cast(null as double) else cast(columns[24] as double) end as cr_reversed_charge,
  case when (columns[25]='') then cast(null as double) else cast(columns[25] as double) end as cr_store_credit,
  case when (columns[26]='') then cast(null as double) else cast(columns[26] as double) end as cr_net_loss        
from dfs.`/drill/testdata/tpcds_sf1/text/catalog_returns.dat`;

create table web_returns as select 
  case when (columns[0]='') then cast(null as integer) else cast(columns[0] as integer) end as wr_returned_date_sk,
  case when (columns[1]='') then cast(null as integer) else cast(columns[1] as integer) end as wr_returned_time_sk,
  case when (columns[2]='') then cast(null as integer) else cast(columns[2] as integer) end as wr_item_sk,
  case when (columns[3]='') then cast(null as integer) else cast(columns[3] as integer) end as wr_refunded_customer_sk,
  case when (columns[4]='') then cast(null as integer) else cast(columns[4] as integer) end as wr_refunded_cdemo_sk,
  case when (columns[5]='') then cast(null as integer) else cast(columns[5] as integer) end as wr_refunded_hdemo_sk,
  case when (columns[6]='') then cast(null as integer) else cast(columns[6] as integer) end as wr_refunded_addr_sk,
  case when (columns[7]='') then cast(null as integer) else cast(columns[7] as integer) end as wr_returning_customer_sk,
  case when (columns[8]='') then cast(null as integer) else cast(columns[8] as integer) end as wr_returning_cdemo_sk,
  case when (columns[9]='') then cast(null as integer) else cast(columns[9] as integer) end as wr_returning_hdemo_sk,
  case when (columns[10]='') then cast(null as integer) else cast(columns[10] as integer) end as wr_returning_addr_sk,
  case when (columns[11]='') then cast(null as integer) else cast(columns[11] as integer) end as wr_web_page_sk,
  case when (columns[12]='') then cast(null as integer) else cast(columns[12] as integer) end as wr_reason_sk,
  case when (columns[13]='') then cast(null as integer) else cast(columns[13] as integer) end as wr_order_number,
  case when (columns[14]='') then cast(null as integer) else cast(columns[14] as integer) end as wr_return_quantity,
  case when (columns[15]='') then cast(null as double) else cast(columns[15] as double) end as wr_return_amt,
  case when (columns[16]='') then cast(null as double) else cast(columns[16] as double) end as wr_return_tax,
  case when (columns[17]='') then cast(null as double) else cast(columns[17] as double) end as wr_return_amt_inc_tax,
  case when (columns[18]='') then cast(null as double) else cast(columns[18] as double) end as wr_fee,
  case when (columns[19]='') then cast(null as double) else cast(columns[19] as double) end as wr_return_ship_cost,
  case when (columns[20]='') then cast(null as double) else cast(columns[20] as double) end as wr_refunded_cash,
  case when (columns[21]='') then cast(null as double) else cast(columns[21] as double) end as wr_reversed_charge,
  case when (columns[22]='') then cast(null as double) else cast(columns[22] as double) end as wr_account_credit,
  case when (columns[23]='') then cast(null as double) else cast(columns[23] as double) end as wr_net_loss         
from dfs.`/drill/testdata/tpcds_sf1/text/web_returns.dat`;

create table web_sales as select 
  case when (columns[0]='') then cast(null as integer) else cast(columns[0] as integer) end as ws_sold_date_sk,
  case when (columns[1]='') then cast(null as integer) else cast(columns[1] as integer) end as ws_sold_time_sk,
  case when (columns[2]='') then cast(null as integer) else cast(columns[2] as integer) end as ws_ship_date_sk,
  case when (columns[3]='') then cast(null as integer) else cast(columns[3] as integer) end as ws_item_sk,
  case when (columns[4]='') then cast(null as integer) else cast(columns[4] as integer) end as ws_bill_customer_sk,
  case when (columns[5]='') then cast(null as integer) else cast(columns[5] as integer) end as ws_bill_cdemo_sk,
  case when (columns[6]='') then cast(null as integer) else cast(columns[6] as integer) end as ws_bill_hdemo_sk,
  case when (columns[7]='') then cast(null as integer) else cast(columns[7] as integer) end as ws_bill_addr_sk,
  case when (columns[8]='') then cast(null as integer) else cast(columns[8] as integer) end as ws_ship_customer_sk,
  case when (columns[9]='') then cast(null as integer) else cast(columns[9] as integer) end as ws_ship_cdemo_sk,
  case when (columns[10]='') then cast(null as integer) else cast(columns[10] as integer) end as ws_ship_hdemo_sk,
  case when (columns[11]='') then cast(null as integer) else cast(columns[11] as integer) end as ws_ship_addr_sk,
  case when (columns[12]='') then cast(null as integer) else cast(columns[12] as integer) end as ws_web_page_sk,
  case when (columns[13]='') then cast(null as integer) else cast(columns[13] as integer) end as ws_web_site_sk,
  case when (columns[14]='') then cast(null as integer) else cast(columns[14] as integer) end as ws_ship_mode_sk,
  case when (columns[15]='') then cast(null as integer) else cast(columns[15] as integer) end as ws_warehouse_sk,
  case when (columns[16]='') then cast(null as integer) else cast(columns[16] as integer) end as ws_promo_sk,
  case when (columns[17]='') then cast(null as integer) else cast(columns[17] as integer) end as ws_order_number,
  case when (columns[18]='') then cast(null as integer) else cast(columns[18] as integer) end as ws_quantity,
  case when (columns[19]='') then cast(null as double) else cast(columns[19] as double) end as ws_wholesale_cost,
  case when (columns[20]='') then cast(null as double) else cast(columns[20] as double) end as ws_list_price,
  case when (columns[21]='') then cast(null as double) else cast(columns[21] as double) end as ws_sales_price,
  case when (columns[22]='') then cast(null as double) else cast(columns[22] as double) end as ws_ext_discount_amt,
  case when (columns[23]='') then cast(null as double) else cast(columns[23] as double) end as ws_ext_sales_price,
  case when (columns[24]='') then cast(null as double) else cast(columns[24] as double) end as ws_ext_wholesale_cost,
  case when (columns[25]='') then cast(null as double) else cast(columns[25] as double) end as ws_ext_list_price,
  case when (columns[26]='') then cast(null as double) else cast(columns[26] as double) end as ws_ext_tax,
  case when (columns[27]='') then cast(null as double) else cast(columns[27] as double) end as ws_coupon_amt,
  case when (columns[28]='') then cast(null as double) else cast(columns[28] as double) end as ws_ext_ship_cost,
  case when (columns[29]='') then cast(null as double) else cast(columns[29] as double) end as ws_net_paid,
  case when (columns[30]='') then cast(null as double) else cast(columns[30] as double) end as ws_net_paid_inc_tax,
  case when (columns[31]='') then cast(null as double) else cast(columns[31] as double) end as ws_net_paid_inc_ship,
  case when (columns[32]='') then cast(null as double) else cast(columns[32] as double) end as ws_net_paid_inc_ship_tax,
  case when (columns[33]='') then cast(null as double) else cast(columns[33] as double) end as ws_net_profit        
from dfs.`/drill/testdata/tpcds_sf1/text/web_sales.dat`;

create table catalog_sales as select 
  case when (columns[0]='') then cast(null as integer) else cast(columns[0] as integer) end as cs_sold_date_sk,
  case when (columns[1]='') then cast(null as integer) else cast(columns[1] as integer) end as cs_sold_time_sk,
  case when (columns[2]='') then cast(null as integer) else cast(columns[2] as integer) end as cs_ship_date_sk,
  case when (columns[3]='') then cast(null as integer) else cast(columns[3] as integer) end as cs_bill_customer_sk,
  case when (columns[4]='') then cast(null as integer) else cast(columns[4] as integer) end as cs_bill_cdemo_sk,
  case when (columns[5]='') then cast(null as integer) else cast(columns[5] as integer) end as cs_bill_hdemo_sk,
  case when (columns[6]='') then cast(null as integer) else cast(columns[6] as integer) end as cs_bill_addr_sk,
  case when (columns[7]='') then cast(null as integer) else cast(columns[7] as integer) end as cs_ship_customer_sk,
  case when (columns[8]='') then cast(null as integer) else cast(columns[8] as integer) end as cs_ship_cdemo_sk,
  case when (columns[9]='') then cast(null as integer) else cast(columns[9] as integer) end as cs_ship_hdemo_sk,
  case when (columns[10]='') then cast(null as integer) else cast(columns[10] as integer) end as cs_ship_addr_sk,
  case when (columns[11]='') then cast(null as integer) else cast(columns[11] as integer) end as cs_call_center_sk,
  case when (columns[12]='') then cast(null as integer) else cast(columns[12] as integer) end as cs_catalog_page_sk,
  case when (columns[13]='') then cast(null as integer) else cast(columns[13] as integer) end as cs_ship_mode_sk,
  case when (columns[14]='') then cast(null as integer) else cast(columns[14] as integer) end as cs_warehouse_sk,
  case when (columns[15]='') then cast(null as integer) else cast(columns[15] as integer) end as cs_item_sk,
  case when (columns[16]='') then cast(null as integer) else cast(columns[16] as integer) end as cs_promo_sk,
  case when (columns[17]='') then cast(null as integer) else cast(columns[17] as integer) end as cs_order_number,
  case when (columns[18]='') then cast(null as integer) else cast(columns[18] as integer) end as cs_quantity,
  case when (columns[19]='') then cast(null as double) else cast(columns[19] as double) end as cs_wholesale_cost,
  case when (columns[20]='') then cast(null as double) else cast(columns[20] as double) end as cs_list_price,
  case when (columns[21]='') then cast(null as double) else cast(columns[21] as double) end as cs_sales_price,
  case when (columns[22]='') then cast(null as double) else cast(columns[22] as double) end as cs_ext_discount_amt,
  case when (columns[23]='') then cast(null as double) else cast(columns[23] as double) end as cs_ext_sales_price,
  case when (columns[24]='') then cast(null as double) else cast(columns[24] as double) end as cs_ext_wholesale_cost,
  case when (columns[25]='') then cast(null as double) else cast(columns[25] as double) end as cs_ext_list_price,
  case when (columns[26]='') then cast(null as double) else cast(columns[26] as double) end as cs_ext_tax,
  case when (columns[27]='') then cast(null as double) else cast(columns[27] as double) end as cs_coupon_amt,
  case when (columns[28]='') then cast(null as double) else cast(columns[28] as double) end as cs_ext_ship_cost,
  case when (columns[29]='') then cast(null as double) else cast(columns[29] as double) end as cs_net_paid,
  case when (columns[30]='') then cast(null as double) else cast(columns[30] as double) end as cs_net_paid_inc_tax,
  case when (columns[31]='') then cast(null as double) else cast(columns[31] as double) end as cs_net_paid_inc_ship,
  case when (columns[32]='') then cast(null as double) else cast(columns[32] as double) end as cs_net_paid_inc_ship_tax,
  case when (columns[33]='') then cast(null as double) else cast(columns[33] as double) end as cs_net_profit         
from dfs.`/drill/testdata/tpcds_sf1/text/catalog_sales.dat`;

alter session set `store.format` = 'parquet';
