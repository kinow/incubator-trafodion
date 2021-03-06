-- @@@ START COPYRIGHT @@@
--
-- Licensed to the Apache Software Foundation (ASF) under one
-- or more contributor license agreements.  See the NOTICE file
-- distributed with this work for additional information
-- regarding copyright ownership.  The ASF licenses this file
-- to you under the Apache License, Version 2.0 (the
-- "License"); you may not use this file except in compliance
-- with the License.  You may obtain a copy of the License at
--
--   http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing,
-- software distributed under the License is distributed on an
-- "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
-- KIND, either express or implied.  See the License for the
-- specific language governing permissions and limitations
-- under the License.
--
-- @@@ END COPYRIGHT @@@
Create table $$table1$$  
?ifNSKRel1
like \maya.$data03.tpcdtab.lineitem
?ifNSKRel1
(
   l_orderkey          int                not null, 
   l_partkey           int                not null, 
   l_suppkey           int                not null, 
   l_linenumber        int                not null, 
   l_quantity          numeric(12,2)      not null, 
   l_extendedprice     numeric(12,2)      not null, 
   l_discount          numeric(12,2)      not null, 
   l_tax               numeric(12,2)      not null, 
   l_returnflag        char(1)            not null, 
   l_linestatus        char(1)            not null, 
   l_shipdate          date               not null, 
   l_commitdate        date               not null, 
   l_receiptdate       date               not null, 
   l_shipinstruct      char(25)           not null, 
   l_shipmode          char(10)           not null, 
   l_comment           varchar(44)        not null, 
?ifMX
primary key (l_orderkey,l_linenumber) )  location $DATA
attribute buffered
?ifMX
?ifNSKRel1
primary key (l_orderkey, l_linenumber) )
buffered 
?ifNSKRel1
;
