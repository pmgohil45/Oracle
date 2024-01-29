-- update record in stud table

set serveroutput on
declare
	xrlno number(5) := &xrlno;
	xfnm char(15) := '&xfnm';
	xlnm char(80) := '&xlfnm';

begin
	update stud set fnm=upper(xfnm), lnm=upper(xlnm) where rlno=xrlno;
	dbms_output.put_line('Record Updated.....');

end;
/