----A
select
    *
from
    mst_cifprnsl left join mst_cifcom on mst_cifprnsl.cifid = mst_cifcom.cifid
			  	 right join mst_cif on mst_cifpersnl.cifid = mst_cif.cifid
where
    status = 2;
----B
select  
    cifid,
    dtjoin
from 
    mst_cif
where   
    to_char(dtjoin,'months') = '08' and to_char(dtjoin,'year') = '2016';
----C
query diatas akan menghasilkan
Jumlah CIFID, berdasarkan AOID dimana nilai CIFID 
di tabel MST_CIF sama dengan CIFID di tabel MST_CIFPERSNL.    
----D
select  
    cifid,
    aoid,
    dtjoin,
    status
from
    mst_cif
where 
    cifid = '0001277352' and cifid = '0001277638'
---
CREATE TABLE mst_cif(
		  cifid VARCHAR(10) primary key NOT NULL , 
		  aoid VARCHAR(10) NOT NULL , 
		  dtjoin DATE NOT NULL , -- tanggal pembukaan
		  fullnm VARCHAR(60) NOT NULL , 
		  npwp VARCHAR(20) , 
		  ciftype SMALLINT NOT NULL , -- jenis cif 0 - perorangan , 1 - non perorangan
		  countryid CHAR(2) NOT NULL , 
		  flgrelated SMALLINT NOT NULL, --TERKAIT BANK ATAU TIDAK
		  status CHAR(1), 
		  flgapprv SMALLINT, 
		  uscrt VARCHAR(5) NOT NULL , 
		  dtcrt TIMESTAMP NOT NULL , 
		  usrupd VARCHAR(5) , 
		  dtupd TIMESTAMP , 
		  usrapv VARCHAR(5) , 
		  dtapprv TIMESTAMP)


CREATE TABLE mst_cifpersnl(
		  cifid VARCHAR(10) primary key NOT NULL , 
		  aoid VARCHAR(10) NOT NULL , 
		  fullnm VARCHAR(80) NOT NULL , 
		  predegree VARCHAR(16) , 
		  postdegree VARCHAR(16) , 
		  surenm VARCHAR(50) NOT NULL , 
		  mothrnm VARCHAR(50) NOT NULL , 
		  religionid CHAR(1) NOT NULL , 
		  marriageid CHAR(1) NOT NULL , 
		  lasteduid VARCHAR(4) NOT NULL , 
		  npwp VARCHAR(20) , 
		  brtdt DATE NOT NULL , 
		  brtplace VARCHAR(32) NOT NULL , 
		  typeid CHAR(2) NOT NULL , 
		  idnbr VARCHAR(32) NOT NULL , 
		  addr VARCHAR(64) NOT NULL , 
		  rt VARCHAR(3) , 
		  rw VARCHAR(3) , 
		  kelnm VARCHAR(32) , 
		  postalcode VARCHAR(5) NOT NULL , 
		  kecnm VARCHAR(32) , 
		  cityid VARCHAR(4) NOT NULL , 
		  provid VARCHAR(2) NOT NULL , 
		  countryid VARCHAR(2) NOT NULL , 
		  notelp VARCHAR(16) , 
		  nofax VARCHAR(16) , 
		  expdt DATE NOT NULL , --masa berlaku jenis identitas
		  stsnation SMALLINT NOT NULL, 
		  sex SMALLINT NOT NULL, 
		  nohp VARCHAR(16) , 
		  bloodtype VARCHAR(2) , 
		  hobby VARCHAR(20) , 
		  insured SMALLINT NOT NULL, 
		  homeid CHAR(1) NOT NULL , 
		  ownid VARCHAR(4) NOT NULL , 
		  alias VARCHAR(80) , 
		  flgcitizen SMALLINT NOT NULL, 
		  note VARCHAR(150), 
		  nip VARCHAR(20), 
		  jobid VARCHAR(3)) 