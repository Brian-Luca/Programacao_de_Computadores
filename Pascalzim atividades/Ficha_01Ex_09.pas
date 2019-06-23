var
	l1,l2,h: real;
Begin
	writeln('Lados e hipotenusa de um triângulo retângulo');
	write('Indique o primeiro lado: ');
	read(l1);
	write('Indique o segundo lado:	');
	read(l2);
	
h:=sqrt(l1*l1+l2*l2);

	writeln('Valor da hipotenusa:	',h);
	readln;
End.