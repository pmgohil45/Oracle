set serveroutput on

declare

	xrlno number(3):=&xrlno;
	xm1 number(3);
	xm2 number(3);
	xm3 number(3);	
	xtotal number;
	xper number;
	--xgade varchar2;
	--xres varchar2;

begin
	select rlno,m1,m2,m3 into xrlno,xm1,xm2,xm3 from res where rlno=xrlno;

--code for total , per

	xtotal := xm1 + xm2 + xm3;
	xper   := xtotal / 3;
	--update res set total=xtotal,per=xper where rlno=xrlno;

-- cod for res and grade

	if xper>90 AND xper<=100
	then
	
	update res set grade='a+',res='PASS',total=xtotal,per=xper  where rlno=xrlno;

	else if xper>80 AND xper<=90
	then
	
	update res set grade='b+',res='PASS',total=xtotal,per=xper  where rlno=xrlno;

	else if xper>70 AND xper<=80
	then
	
	update res set grade='c+',res='PASS',total=xtotal,per=xper  where rlno=xrlno;

	else if xper>50 AND xper<=70
	then
	
	update res set grade='d+',res='PASS',total=xtotal,per=xper  where rlno=xrlno;

	else if xper>40 AND xper<=50
	then
	
	update res set grade='d',res='PASS',total=xtotal,per=xper  where rlno=xrlno;

	else 
	
	update res set grade='--',res='Fail',total=xtotal,per=xper  where rlno=xrlno;

end if;
end if;
end if;
end if;
end if;
end;
/