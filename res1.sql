set serveroutput on

declare
	xrlno number(3):=&xrlno;
	xname varchar2(20):='&xname';
	xm1 number(3):=&xm1;
	xm2 number(3):=&xm2;
	xm3 number(3):=&xm3;	
--	xtotal number;
--	xper number;
--	xgade varchar2;
--	xres varchar2;
begin
	
	insert into res(rlno,name,m1,m2,m3) values (xrlno,upper(xname),xm1,xm2,xm3);
	dbms_output.put_line('Record Inserted......');
	



end;
/	