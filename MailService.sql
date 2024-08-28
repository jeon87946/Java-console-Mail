CREATE TABLE tbl_member(
	id varchar(50) PRIMARY KEY
  , pwd varchar(50) NOT NULL
  , name varchar(50) NOT NULL
  , callno varchar(50) NOT NULL
  );

 CREATE TABLE tbl_mail(
--	no
	title varchar(50) NOT NULL
 ,	writer varchar(50) NOT NULL 
 ,	dear varchar(50) NOT NULL
 , 	msg varchar(4000) NOT NULL
);

SELECT * FROM TBL_MAIL;
SELECT * FROM TBL_MEMBER;