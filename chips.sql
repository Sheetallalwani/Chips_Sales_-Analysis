-- Which weightgram packet poeple consume most
select
	gram,
    count(gram)
from sales_data
group by 1
order by 2;
-- 175g >150>134

-- store which generate most and least imcomes
select
	STORE_NBR,
    count(lylty_card_nbr),
    sum(PROD_QTY),
    round(sum(TOT_SALES),1)
from sales_data
group by 1
order by 3 desc,4 desc;

-- segmentation of customer which age group buy more and which gram of packets are more dominate
select
    lifestage,
    count(lifestage)
from sales_data
group by 1
order by 2;

-- where the highest sales coming from(in terms of store,chips variant , segment)
select
	premium_customer,
    sum(tot_sales),
    sum(prod_qty)
from sales_data
group by 1
order by 2 desc;

-- 
select
	prod_name,
    sum(tot_sales)
from sales_data
group by 1
order by 2 desc








