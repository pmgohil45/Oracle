-- use procedure(s1)
set serveroutput on
declare
	a number:=&a;
	b number:=&b;
	c number:=&c;
begin
	sum11(a,b,c);	
	dbms_output.put_line('sum : ' || c);
end;
/


-- @ e:\prakash\oracle\inout_s1.sql;
-- @ e:\prakash\oracle\inout_pro.lst;