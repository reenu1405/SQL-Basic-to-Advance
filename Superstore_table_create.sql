
CREATE TABLE orders(
	[row_id] [float] NULL,
	[order_id] [nvarchar](255) NULL,
	[order_date] [datetime] NULL,
	[ship_date] [datetime] NULL,
	[ship_mode] [nvarchar](255) NULL,
	[customer_id] [nvarchar](255) NULL,
	[customer_name] [nvarchar](255) NULL,
	[segment] [nvarchar](255) NULL,
	[country] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[state] [nvarchar](255) NULL,
	[postal_code] [float] NULL,
	[region] [nvarchar](255) NULL,
	[product_id] [nvarchar](255) NULL,
	[category] [nvarchar](255) NULL,
	[sub_category] [nvarchar](255) NULL,
	[product_name] [nvarchar](255) NULL,
	[sales] [float] NULL,
	[quantity] [float] NULL,
	[discount] [float] NULL,
	[profit] [float] NULL
) 
;


insert into orders values(1364,'US-2021-155425','2021-11-10','2021-11-11','First Class','AB-10600','Ann Blume','Corporate','United States','Tucson','Arizona','85705','West','OFF-BI-10001036','Office Supplies','Binders','Cardinal EasyOpen D-Ring Binders',38.388,14,0.7,-25.592);
insert into orders values(1365,'US-2021-155425','2021-11-10','2021-11-11','First Class','AB-10600','Ann Blume','Corporate','United States','Tucson','Arizona','85705','West','TEC-MA-10003183','Technology','Machines','DYMO CardScan Personal V9 Business Card Scanner',95.994,2,0.7,-63.996);
insert into orders values(1381,'CA-2018-126361','2018-08-04','2018-08-09','Second Class','VD-21670','Valerie Dominguez','Consumer','United States','Pleasant Grove','Utah','84062','West','OFF-BI-10002852','Office Supplies','Binders','Ibico Standard Transparent Covers',13.184,1,0.2,4.7792);
insert into orders values(8331,'CA-2021-113572','2021-11-07','2021-11-11','Standard Class','FP-14320','Frank Preis','Consumer','United States','New York City','New York','10024','East','TEC-AC-10002370','Technology','Accessories','Maxell CD-R Discs',7.88,4,0,2.5216);
insert into orders values(1382,'US-2020-100566','2020-09-03','2020-09-09','Standard Class','JK-16120','Julie Kriz','Home Office','United States','Aurora','Illinois','60505','Central','FUR-FU-10003394','Furniture','Furnishings','Tenex "The Solids" Textured Chair Mats',83.952,3,0.6,-90.2484);



