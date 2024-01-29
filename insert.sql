-- create a program  that insert record in table

set serveroutput on
declare
	xrlno number(5) := &xrlno;
	xfnm char(15) := '&xfnm';
	xlnm char(80) := '&xlnm';

begin
	insert into stud values(xrlno, upper(xfnm),upper(xlnm));
	dbms_output.put_line('Record inserted....');

end;
/