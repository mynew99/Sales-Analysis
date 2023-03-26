
  
SELECT * FROM project.DBO.data1
  
part_no		         products					  quantity   product_cost	 total_sale    profit         order_date               ship_date               area            district   delivery_days    segment		     customers_name
01A110002	   ASSY. OIL SEPARATOR	      70	        327			      17150	      62.15	  2022-07-31 00:00:00.000	2022-08-03 00:00:00.000     	Chippili	        tirupati	      4	        consumers	    chenna auto mobiles
01B020001  	STUD - INJECTOR CLAMP	      55	        327			      18370	     -288.77 	2022-09-08 00:00:00.000	2022-09-14 00:00:00.000	    Pappireddipalle   vijaya wada	      4	         dealers	    dhana lakshmi auto mobiles

  
SELECT COUNT (*) FROM project.DBO.data1
  
  53760
  
select top 5 * from project.dbo.data1 

 part_no	products	        Quantity	product_cost    	total_sale	Profit	Order_Date	              Ship_Date	                    area	            district	delivery_days	Segment	       customers_name
01A110002	ASSY. OIL SEPARATOR	   70	        327	          17150	     62.15	2022-07-31 00:00:00.000 	2022-08-03 00:00:00.000 	    Chippili	        tirupati	    4	        consumers	   chenna auto mobiles
01B020001	STUD - INJECTOR CLAMP  55	        327	          18370	    -288.77	2022-09-08 00:00:00.000	  2022-09-14 00:00:00.000	      Pappireddipalle   vijaya wada  	4	        dealers	       dhana lakshmi auto mobiles


select * from project.dbo.data1 where products ='ASSY. OIL SEPARATOR'

  product_cost	total_sale	Profit	Order_Date	             Ship_Date	              area	      district	  delivery_days	  Segment	    customers_name
   327	          17150  	  62.15 	2022-07-31 00:00:00.000	 2022-08-03 00:00:00.000	Chippili	  tirupati	        4	        consumers	  chenna auto mobiles
   21	            12064	    186.95	2022-12-19 00:00:00.000	 2022-12-23 00:00:00.000	Gangavaram 	sri satya sai	    4	        dealers	    venkatesh auto mobiles

select COUNT (*) from project.dbo.data1 where products ='ASSY. OIL SEPARATOR'
  
  738
  
select * from project.dbo.data1 where area ='Chippili'
  
  part_no	  products	                Quantity	product_cost	total_sale	Profit	Order_Date	            Ship_Date	                    area	    district	delivery_days	  Segment	      customers_name
  01A110002	  ASSY. OIL SEPARATOR	        70	        327	          17150	    62.15	2022-07-31 00:00:00.000	2022-08-03 00:00:00.000	   Chippili	  tirupati	     4	        consumers	    chenna auto mobiles
  A01B150096  ABOLT M8X16-HEX HEAD FLANGE	72	        214	          2160	    119.28	2022-06-10 00:00:00.000	2022-06-11 00:00:00.000	 Chippili	  tirupati	     4	        counter sale  chenna auto mobiles
  
select YEAR(Order_Date),SUM(total_sale) from project.dbo.data1 group by (Order_Date)
  
  year  total_sale
  2022	175378
  2022	225497
  
select YEAR(Order_Date),MONTH(Order_Date),SUM(total_sale) from project.dbo.data1 group by (Order_Date),MONTH(Order_Date)
  
  year  month   total_sale
  2022	10   	130046
  2022	1	    541899
  
select SUM(total_sale) from project.dbo.data1 where district ='vijaya wada'
total_sales in vijayawada
 4565565
  
select distinct products from project.dbo.data1 where district ='vijaya wada'
  
products
ABOLT M8X16-HEX HEAD FLANGE
Assembly-Ring dog & Gear 4 LayShaft
ASSY. OIL SEPARATOR
BOLT GEAR IDLER
BOLT M6 X 10 HEX HEAD FLANGE
BOLT M8X16-HEX HEAD FLANGE
DOWEL CLUTCH
DOWEL CLUTCH HOUSING
NUT-M6(GRADE-8)
SHAFT-REVERSE IDLER
SPRING -FT
STUD - INJECTOR CLAMP
STUD-2 M8 CASING
  
