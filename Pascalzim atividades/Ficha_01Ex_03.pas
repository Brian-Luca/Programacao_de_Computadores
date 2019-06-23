var
nome:string;
Begin
	Textcolor(15);
	writeln('Qual é o seu nome?');
	write('Meu nome é: ');
	Read(nome);
	clrscr;
	writeln('Olá ', nome,'!');
	readln;
End.