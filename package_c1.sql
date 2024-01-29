--package call
set serveroutput on
declare
	n1 number := &n1;
	n2 number;
begin
	prakash.psq(n1,n2);
	dbms_output.put_line('squre = '||n2);
	prakash.pcb(n1,n2);
	dbms_output.put_line('cube = '||n2);
end;
/