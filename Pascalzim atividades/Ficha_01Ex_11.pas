Program Pzim ;
const
	eu = 1.119;
var
	l,km,custo,cusdio,disE,disL,consu: real;
Begin    
	writeln('Quantos litros foram gastos?');
	write('Quantidade: ');
	readln(l);
	writeln('Quantos Kilometros foram percorridos?');
	write('Quantidade: ');
	readln(km);
	
custo:= l*eu;
cusdio:= km/l;
consu:= km/cusdio;
disE:= consu*eu; 
disL:= l/km*100;

	writeln('Foram gastos:  ', disE:3:2,' £/km e ', DisL:3:2,' l/100km');
	readln;	 
End.