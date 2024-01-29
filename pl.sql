set serveroutput on 
declare
	rolno number(3);
	lnm varchar(20);
	fnm char(20);
begin
	rolno := 1;
	lnm := 'Prakash';
	fnm := 'Gohil';
	dbms_output.Put_Line('roll number : '|| rolno);
	dbms_output.Put_Line(lnm || ' : last name');
	--dbms_output.put_line(rlno || lnm || fnm);
end;