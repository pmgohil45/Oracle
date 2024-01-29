--program to update commition comm table

set serveroutput on
declare
	xid number(2) := &xid;
	amt number;
	s number;
	total number;
begin 
	select sale into s from comm1 where id=xid;
if s<5000
then
	amt := 0;
	total := s;
	update comm1 set com=amt where id=xid;
else if s>=5000 and s<10000
then
	amt := s*0.10;
	total := s + amt;
	update comm1 set com=amt where id=xid;	
else if s>=10000 and s<15000
then
	amt := s*20/100;
	total := s + amt;
	update comm1 set com=amt where id=xid;	
else if s>=15000 and s<30000
then
	amt := s*0.30;
	total := s + amt;
	update comm1 set com=amt where id=xid;	
else
	amt := s*0.35;
	total := s + amt;
	update comm1 set com=amt where id=xid;
end if;
end if;
end if;
end if;

end;
/
