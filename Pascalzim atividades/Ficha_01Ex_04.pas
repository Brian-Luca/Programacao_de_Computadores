var
	num,minutos,horas,dias: integer;
Begin
	write('Digite um número em minutos: ');
	read(num);
	
minutos:= num mod 60;
horas:= num mod 1440 div 60;
dias:= num div 1440;

	Writeln('Seu tempo em Dias, Horas, Minutos: ', dias,'d ',horas,'h ',minutos,'m');
	readln;  
End.