--total function use 
set serveroutput on
declare
	a1 number := &a1;
	b1 number := &b1;
	c1 number := &c1;
	
begin
	c1:=add2(a1,b1,c1);
	dbms_output.put_line('Answer : '||c1);
end;
/