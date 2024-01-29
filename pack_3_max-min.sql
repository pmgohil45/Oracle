-- call
set serveroutput on
declare
	a1 number:=&a1;
	b1 number:=&b1;
	c1 number:=&c1;
	ans number;
begin
	ans:=pnm.promax(a1,b1,c1);
	dbms_output.put_line('Max = '||ans);
	pnm.promin(a1,b1,c1);
end;
/