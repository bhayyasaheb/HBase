start-all.sh
start-hbase.sh
jps
hbase shell

To show the tables:-
------------------
list


create a table with 3 families -personal,sem1 and sem2
------------------------------------------------------
create 'niit', 'personal','sem1','sem2'


schema of the table:-
-------------------
describe 'niit'

{NAME => 'personal', BLOOMFILTER => 'ROW', VERSIONS => '1', IN_MEMORY => 'false', KEEP_DELETED_CELLS => 'FALSE', DATA_BLOCK_ENCODING => 'NONE', TTL =>
 'FOREVER', COMPRESSION => 'NONE', MIN_VERSIONS => '0', BLOCKCACHE => 'true', BLOCKSIZE => '65536', REPLICATION_SCOPE => '0'}                         
{NAME => 'sem1', BLOOMFILTER => 'ROW', VERSIONS => '1', IN_MEMORY => 'false', KEEP_DELETED_CELLS => 'FALSE', DATA_BLOCK_ENCODING => 'NONE', TTL => 'FO
REVER', COMPRESSION => 'NONE', MIN_VERSIONS => '0', BLOCKCACHE => 'true', BLOCKSIZE => '65536', REPLICATION_SCOPE => '0'}                             
{NAME => 'sem2', BLOOMFILTER => 'ROW', VERSIONS => '1', IN_MEMORY => 'false', KEEP_DELETED_CELLS => 'FALSE', DATA_BLOCK_ENCODING => 'NONE', TTL => 'FO
REVER', COMPRESSION => 'NONE', MIN_VERSIONS => '0', BLOCKCACHE => 'true', BLOCKSIZE => '65536', REPLICATION_SCOPE => '0'}                             


To add cell data inside a table:-
--------------------------------
put 'niit','101','personal:name','Bhayyasaheb'

put 'niit','101','personal:add','Mhaswad'

put 'niit','101','sem1:Maths','95'

put 'niit','101','sem2:Chemistry','85'

put 'niit','102','personal:name','Sayali'

put 'niit','102','personal:add','Mhaswad'

put 'niit','102','sem1:Maths','90'

put 'niit','102','sem2:Chemistry','80'



To see the data from the table:-
------------------------------
scan 'niit'

 ROW                                    COLUMN+CELL                                                                                                    
 101                                   column=personal:add, timestamp=1514453712079, value=Mhaswad                                                    
 101                                   column=personal:name, timestamp=1514453596208, value=Bhayyasaheb                                               
 101                                   column=sem1:Maths, timestamp=1514453717636, value=95                                                           
 101                                   column=sem2:Chemistry, timestamp=1514453723487, value=85                                                       
 102                                   column=personal:add, timestamp=1514453798109, value=Mhaswad                                                    
 102                                   column=personal:name, timestamp=1514453792801, value=Sayali                                                    
 102                                   column=sem1:Maths, timestamp=1514453808894, value=90                                                           
 102                                   column=sem2:Chemistry, timestamp=1514453814582, value=80                                                       



Add new schema in the table:-
---------------------------

alter 'niit', NAME => 'sem3'


schema of the table:-
-------------------
describe 'niit'

Table niit is ENABLED                                                                                                                                 
COLUMN FAMILIES DESCRIPTION                                                                                                                           
{NAME => 'personal', BLOOMFILTER => 'ROW', VERSIONS => '1', IN_MEMORY => 'false', KEEP_DELETED_CELLS => 'FALSE', DATA_BLOCK_ENCODING => 'NONE', TTL =>
 'FOREVER', COMPRESSION => 'NONE', MIN_VERSIONS => '0', BLOCKCACHE => 'true', BLOCKSIZE => '65536', REPLICATION_SCOPE => '0'}                         
{NAME => 'sem1', BLOOMFILTER => 'ROW', VERSIONS => '1', IN_MEMORY => 'false', KEEP_DELETED_CELLS => 'FALSE', DATA_BLOCK_ENCODING => 'NONE', TTL => 'FO
REVER', COMPRESSION => 'NONE', MIN_VERSIONS => '0', BLOCKCACHE => 'true', BLOCKSIZE => '65536', REPLICATION_SCOPE => '0'}                             
{NAME => 'sem2', BLOOMFILTER => 'ROW', VERSIONS => '1', IN_MEMORY => 'false', KEEP_DELETED_CELLS => 'FALSE', DATA_BLOCK_ENCODING => 'NONE', TTL => 'FO
REVER', COMPRESSION => 'NONE', MIN_VERSIONS => '0', BLOCKCACHE => 'true', BLOCKSIZE => '65536', REPLICATION_SCOPE => '0'}                             
{NAME => 'sem3', BLOOMFILTER => 'ROW', VERSIONS => '1', IN_MEMORY => 'false', KEEP_DELETED_CELLS => 'FALSE', DATA_BLOCK_ENCODING => 'NONE', TTL => 'FO
REVER', COMPRESSION => 'NONE', MIN_VERSIONS => '0', BLOCKCACHE => 'true', BLOCKSIZE => '65536', REPLICATION_SCOPE => '0'}                             


To check old values from the cell:-
---------------------------------

alter 'niit', {NAME => 'personal', VERSIONS => 3}


schema of the table:-
-------------------
describe 'niit'

Table niit is ENABLED                                                                                                                                 
COLUMN FAMILIES DESCRIPTION                                                                                                                           
{NAME => 'personal', BLOOMFILTER => 'ROW', VERSIONS => '3', IN_MEMORY => 'false', KEEP_DELETED_CELLS => 'FALSE', DATA_BLOCK_ENCODING => 'NONE', TTL =>
 'FOREVER', COMPRESSION => 'NONE', MIN_VERSIONS => '0', BLOCKCACHE => 'true', BLOCKSIZE => '65536', REPLICATION_SCOPE => '0'}                         
{NAME => 'sem1', BLOOMFILTER => 'ROW', VERSIONS => '1', IN_MEMORY => 'false', KEEP_DELETED_CELLS => 'FALSE', DATA_BLOCK_ENCODING => 'NONE', TTL => 'FO
REVER', COMPRESSION => 'NONE', MIN_VERSIONS => '0', BLOCKCACHE => 'true', BLOCKSIZE => '65536', REPLICATION_SCOPE => '0'}                             
{NAME => 'sem2', BLOOMFILTER => 'ROW', VERSIONS => '1', IN_MEMORY => 'false', KEEP_DELETED_CELLS => 'FALSE', DATA_BLOCK_ENCODING => 'NONE', TTL => 'FO
REVER', COMPRESSION => 'NONE', MIN_VERSIONS => '0', BLOCKCACHE => 'true', BLOCKSIZE => '65536', REPLICATION_SCOPE => '0'}                             
{NAME => 'sem3', BLOOMFILTER => 'ROW', VERSIONS => '1', IN_MEMORY => 'false', KEEP_DELETED_CELLS => 'FALSE', DATA_BLOCK_ENCODING => 'NONE', TTL => 'FO
REVER', COMPRESSION => 'NONE', MIN_VERSIONS => '0', BLOCKCACHE => 'true', BLOCKSIZE => '65536', REPLICATION_SCOPE => '0'}                             



To add cell data inside a table:-
--------------------------------

put 'niit','101','personal:add','Navi Mumbai'




To see the data from the table:-
------------------------------ 
scan 'niit'
ROW                                    COLUMN+CELL                                                                                                    
 101                                   column=personal:add, timestamp=1514454286613, value=Navi Mumbai                                                
 101                                   column=personal:name, timestamp=1514453596208, value=Bhayyasaheb                                               
 101                                   column=sem1:Maths, timestamp=1514453717636, value=95                                                           
 101                                   column=sem2:Chemistry, timestamp=1514453723487, value=85                                                       
 102                                   column=personal:add, timestamp=1514453798109, value=Mhaswad                                                    
 102                                   column=personal:name, timestamp=1514453792801, value=Sayali                                                    
 102                                   column=sem1:Maths, timestamp=1514453808894, value=90                                                           
 102                                   column=sem2:Chemistry, timestamp=1514453814582, value=80         


To get particular record from table:-
-----------------------------------
get 'niit','101'

 COLUMN                                 CELL                                                                                                           
 personal:add                          timestamp=1514454286613, value=Navi Mumbai                                                                     
 personal:name                         timestamp=1514453596208, value=Bhayyasaheb                                                                     
 sem1:Maths                            timestamp=1514453717636, value=95                                                                              
 sem2:Chemistry                        timestamp=1514453723487, value=85  


To add cell data inside a table:-
--------------------------------

put 'niit','101','personal:add','Mumbai'


To get the old values from the cell OR fetching multiple values in one cell:-
---------------------------------------------------------------------------

get 'niit','101',{COLUMN => 'personal:add', VERSIONS => 3}

 COLUMN                                 CELL                                                                                                           
 personal:add                          timestamp=1514454769933, value=Mumbai                                                                          
 personal:add                          timestamp=1514454286613, value=Navi Mumbai                                                                     
 personal:add                          timestamp=1514453712079, value=Mhaswad           


To add cell data inside a table:-
--------------------------------
put 'niit','103','personal:name','Sayali'
put 'niit','103','personal:add','Nerul'
put 'niit','103','sem1:Maths','75'
put 'niit','103','sem2:Chemistry','85'
put 'niit','104','personal:name','Sayali'
put 'niit','104','personal:add','Nerul'
put 'niit','104','sem1:Maths','75'
put 'niit','104','sem2:Chemistry','85'


To see data from the table:-
--------------------------
scan 'niit'

ROW                                    COLUMN+CELL                                                                                                    
 101                                   column=personal:add, timestamp=1514454855170, value=CST                                                        
 101                                   column=personal:name, timestamp=1514453596208, value=Bhayyasaheb                                               
 101                                   column=sem1:Maths, timestamp=1514453717636, value=95                                                           
 101                                   column=sem2:Chemistry, timestamp=1514453723487, value=85                                                       
 102                                   column=personal:add, timestamp=1514455007385, value=Nerul                                                      
 102                                   column=personal:name, timestamp=1514455000233, value=SBK                                                       
 102                                   column=sem1:Maths, timestamp=1514453808894, value=90                                                           
 102                                   column=sem2:Chemistry, timestamp=1514453814582, value=80                                                       
 103                                   column=personal:add, timestamp=1514455051112, value=Nerul                                                      
 103                                   column=personal:name, timestamp=1514455046324, value=Sayali                                                    
 103                                   column=sem1:Maths, timestamp=1514455056446, value=75                                                           
 103                                   column=sem2:Chemistry, timestamp=1514455062802, value=85                                                       
 104                                   column=personal:add, timestamp=1514455311010, value=Nerul                                                      
 104                                   column=personal:name, timestamp=1514455300603, value=Sayali                                                    
 104                                   column=sem1:Maths, timestamp=1514455329204, value=75                                                           
 104                                   column=sem2:Chemistry, timestamp=1514455321311, value=85      



To get particular record:-
------------------------
get 'niit', '104'

COLUMN                                 CELL                                                                                                           
 personal:add                          timestamp=1514455311010, value=Nerul                                                                           
 personal:name                         timestamp=1514455300603, value=Sayali                                                                          
 sem1:Maths                            timestamp=1514455329204, value=75                                                                              
 sem2:Chemistry                        timestamp=1514455321311, value=85 


To delete one column from the row:-
---------------------------------
delete 'niit', '104', 'sem2:Chemistry'


To get particular record:-
------------------------
get 'niit', '104'

COLUMN                                 CELL                                                                                                           
 personal:add                          timestamp=1514455311010, value=Nerul                                                                           
 personal:name                         timestamp=1514455300603, value=Sayali                                                                          
 sem1:Maths                            timestamp=1514455329204, value=75


To delete particular record or row from the table:-
-------------------------------------------------
deleteall 'niit', '104'

scan 'niit'

ROW                                    COLUMN+CELL                                                                                                    
 101                                   column=personal:add, timestamp=1514454855170, value=CST                                                        
 101                                   column=personal:name, timestamp=1514453596208, value=Bhayyasaheb                                               
 101                                   column=sem1:Maths, timestamp=1514453717636, value=95                                                           
 101                                   column=sem2:Chemistry, timestamp=1514453723487, value=85                                                       
 102                                   column=personal:add, timestamp=1514455007385, value=Nerul                                                      
 102                                   column=personal:name, timestamp=1514455000233, value=SBK                                                       
 102                                   column=sem1:Maths, timestamp=1514453808894, value=90                                                           
 102                                   column=sem2:Chemistry, timestamp=1514453814582, value=80                                                       
 103                                   column=personal:add, timestamp=1514455051112, value=Nerul                                                      
 103                                   column=personal:name, timestamp=1514455046324, value=Sayali                                                    
 103                                   column=sem1:Maths, timestamp=1514455056446, value=75                                                           
 103                                   column=sem2:Chemistry, timestamp=1514455062802, value=85      


To check no of records in the table:-
-----------------------------------
 count 'niit'

=> 3
----------------------------------------------------------------------------------------------------------------------------------------------------

using the custs file from hdfs import the data into mysql:-
---------------------------------------------------------

show databases;

create database hbase;

use hbase;

CREATE TABLE customer(
   customer_id INT NOT NULL,
   firstname VARCHAR(40) NOT NULL,
   lastname VARCHAR(40) NOT NULL,
   age INT NOT NULL,
   profession VARCHAR(40) NOT NULL,
   PRIMARY KEY ( customer_id ));


Export data from hdfs into Mysql using Sqoop in hduser terminal:-
---------------------------------------------------------------
sqoop export --connect jdbc:mysql://localhost/hbase --username root --password password --table customer --update-mode  allowinsert --update-key customer_id   --export-dir /user/training/custs --input-fields-terminated-by ',' ;


create tablename, schemaname in the hbase shell:-
-----------------------------------------------
create 'customer','personal'


Export data from mysql into hdfs using Sqoop in hduser terminal:-
---------------------------------------------------------------
sqoop import --connect jdbc:mysql://localhost/hbase --username root --password password --table customer --columns "customer_id,firstname,lastname,age,profession" --hbase-table customer --column-family personal --hbase-row-key customer_id  -m 1;

In hbase shell:-
--------------
count 'customer'
9999

Filter all the columns with value "Pilot"
-----------------------------------------

scan 'customer', FILTER => "ValueFilter(=, 'binary:Pilot')"

209 rows

scan 'customer', FILTER => "ValueFilter(=, 'binary:45')"

196 rows


Filter single column with a value "Pilot"
------------------------------------------

scan 'customer', {COLUMNS => 'personal:profession', FILTER => "ValueFilter(=, 'substring:Pilot')"}

209 rows


scan 'customer', {COLUMNS => 'personal:lastname', FILTER => "ValueFilter(=, 'substring:Smith')"}

 4000486              column=personal:lastname, timestamp=1514468997521, value=S
                      mith                                                      
 4000545              column=personal:lastname, timestamp=1514468997521, value=S
                      mith                                                      
 4002735              column=personal:lastname, timestamp=1514468997761, value=S
                      mith                                                      
 4002769              column=personal:lastname, timestamp=1514468997761, value=S
                      mith                                                      
 4005375              column=personal:lastname, timestamp=1514468997951, value=S
                      mith                                                      
 4009986              column=personal:lastname, timestamp=1514468998114, value=S
                      mith                         



