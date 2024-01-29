-- in procedure use(stud1)
set serveroutput on
declare
	xa1 number := &xa1;
	xa2 number := &xa2;
	xa3 number := &xa3;

begin
	stud1(xa1,xa2,xa3);
end;
/
