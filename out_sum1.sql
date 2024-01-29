-- use procedure(sum1)
set serveroutput on
declare
	a number := &a;
	b number := &b;
	c number := &c;
	ans1 number;
begin
	sum1(a,b,c,ans1);
	dbms_output.put_line('sum :' || ans1);
end;
/