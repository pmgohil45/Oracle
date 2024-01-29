-- program to marksheet(result)
-- table name : "result1"
-- columns name : "rlno, name, m1, m2, m3, total, per, res, gread"
set servaroutput on
DECLARE
	roll number := &rlno;
	mark1 number := &m1;
	mark2 number := &m2;
	mark3 number := &m3;
	tot number;
	xper number;
	xres varchar2;
	xgread varchar2;

BEGIN
	select rlno, m1, m2, m3, total, per, res, gread into roll,mark1,mark2,mark3,tot,xper,xres,xgread
	from result1 where rlno = &rlno;
	
	-- code of total
	tot = mark1 + mark2 + mark3;
	update result1 set total=tot WHERE rlno=&roll;
	
	-- code of percentage
	xper = tot/3;
	update result1 set per=xper where rlno=roll;
	
	-- code of gread and pass or fail 
	if xper<85 && xper>=100
	then 
		update result1 set gread='A+' where rlno=&roll;
	
	else if xper<70 && xper>=85
	then 	
		update result1 set gread='B+' where rlno=&roll;
	
	else if xper<55 && xper>=70
	then 	
		update result1 set gread='C+' where rlno=&roll;
		
	else if xper<40 && xper>=55
	then 	
		update result1 set gread='D+' where rlno=&roll;
		
	else xper>=40	
		update result1 set gread='Fail' where rlno=&roll;
	end if;
	end if;
	end if;
	end if;
	
end;
/ 