var
	num,g,m,s: real;
Begin
   write('Indique um valor em radianos: ');
   read(num);
   
g:= num*180/3.14;
m:= frac(g)*60;
s:= frac(m)*60;	

	writeln('Radianos em Graus: ',int(g),'º');
	writeln('Em minutos: ',int(m),'m');
	writeln('Em segundos: ',int(s),'s');
	readln;
End.