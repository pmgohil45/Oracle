--total function use 
set serveroutput on
declare
	a1 number := &a1;
	b1 number := &b1;
	c1 number := &c1;
	x number;
begin
	x := total(a1,b1,c1);
	dbms_output.put_line('Answer : '||x);
end;
/