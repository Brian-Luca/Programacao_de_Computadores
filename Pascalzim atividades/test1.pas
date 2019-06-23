Program Pzim ;

type
	Agenda = record
		Nome: String[161];
		Apelido,TeleF,TeleC: String[20];
		Endereco: String[150];
		Email: String[50];
	end;

var
	Det: array[1..2, 1..6] of Agenda;

procedure Detalhes;
	begin
		Det[1,1].Nome:= 'Nome: ';
	  Det[1,2].Apelido:= 'Apelido: ';
	  Det[1,3].TeleF:= 'Telefone(Fixo): ';
	  Det[1,4].TeleC:= 'Telefone(Celular): ';
	  Det[1,5].Endereco:= 'Endereço: ';
	  Det[1,6].Email:= 'Email: ';
		
		gotoxy(1,1);
		writeln(Det[1,1].Nome);
		gotoxy(1,3);
		writeln(Det[1,2].Apelido);
		gotoxy(1,6); 
		writeln(Det[1,3].TeleF); 
		gotoxy(1,9);
		writeln(Det[1,4].TeleC); 
		gotoxy(1,12);
		writeln(Det[1,5].Endereco);
		gotoxy(1,15);
		writeln(Det[1,6].Email);
		readln;   
	end;

		
Begin
	Detalhes 
End.