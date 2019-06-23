var
	num,h,m: integer;
Begin
	write('Dê um valor em horas: ');
	read(num);
	write('Agora um em minutos: ');
	read(num);
h:= num*60;
m:= num;

	writeln('Seu tempo apenas em minutos: ', h+m);
	readln;	  
End.