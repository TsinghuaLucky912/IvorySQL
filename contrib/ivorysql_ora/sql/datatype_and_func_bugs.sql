--
-- Mainly contains bug-modified test cases for built-in datatypes and built-in functions.
--

CREATE FUNCTION f_noparam() 
RETURN int 
IS 
BEGIN  
RETURN 1; 
END;
/

alter session set NLS_LENGTH_SEMANTICS='BYTE';
create table char_tb(char_clo char(3));
insert into char_tb values('测试');
alter session set NLS_LENGTH_SEMANTICS='CHAR';
create table char_tb2(char_clo char(3));
insert into char_tb2 values('测试');
