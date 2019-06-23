Program Pzim ;
type
	Agenda = record
		Nome: String[161];
		Apelido,TeleF,TeleC: String[20];
		Ender: String[150];
		Mail: String[50];
		Auxiliar: String;
	end;
	
var
	opcao,opc: integer = 1;
	Add: Agenda;
	All: array[1..100, 1..6] of string;
	j,i: integer;
	n: string;
	opmenu: array[1..2] of string = ('Sim','Não');
	opcmenu: array[1..7] of string = ('Nome','Apelido','Telefone(Fixo)','Telefone(Celular)','Endereço','Email','Voltar');

procedure Adicionar;
	begin
		gotoxy(60 - (length('Adicionar Contato') div 2) + 1, 3);
	  writeln('Adicionar Contato');
	  gotoxy(33, 8);
	  textcolor(11);
	  write('Nome: ');
	  textcolor(15);
	  readln(Add.Nome);
	  gotoxy(33, 10);
	  textcolor(11);
	  write('Apelido: ');
	  textcolor(15);
	  readln(Add.Apelido);
	  gotoxy(33, 12);
	  textcolor(11);
	  write('Telefone(Fixo): ');
	  textcolor(15);
	  readln(Add.TeleF);
	  gotoxy(33, 14);
	  textcolor(11);
	  write('Telefone(Celular): ');
	  textcolor(15);
	  readln(Add.TeleC);
	  gotoxy(33, 16);
	  textcolor(11);
	  write('Endereço: ');
	  textcolor(15);
	  readln(Add.Ender);
	  gotoxy(33, 18);
	  textcolor(11);
	  write('Email: ');
	  textcolor(15);
	  readln(Add.Mail);
	end;

procedure altMenu;
	var
	i: integer;
	
	begin
	  textcolor(10);
	  gotoxy(60 - (length('Deseja Alterar algo?') div 2) + 1, 24);
	  write('Deseja Alterar algo?');
	  for i := 1 to 2 do
	  begin
	  	if (i = opcao) then
			  textcolor(15)
			else
				textcolor(8);
	
		  gotoxy(38 - (length(opMenu[i]) div 2) + (15 * i), 27);
		  write(opMenu[i]);
		end;
		
	end;

procedure teclasSNMenu;
var 
	tecla: char;
begin
	repeat 
		altMenu;
		
		tecla := readkey;
	  
		if (tecla = #77) then       
		  opcao := opcao + 1
	  else if(tecla = #75) then 	
	  	opcao := opcao - 1;
	  
	  if (opcao = 3) then
	  	opcao := 1;
	  	
	  if (opcao = 0) then
	  	opcao := 2;
	  	
	until (tecla = #13);

end;

procedure salvar;
	begin
		for j:= 1 to 100 do                                  
		if (all[j,1] = '') then
			begin
				all[j,1]:= Add.Nome;
				all[j,2]:= Add.Apelido;
				all[j,3]:= Add.TeleF;
				all[j,4]:= Add.TeleC;
				all[j,5]:= Add.Ender;
				all[j,6]:= Add.Mail;
			end
		else
			begin
				textcolor(12);
				gotoxy(60 - (length('Não há mais espaços para contatos!') div 2) + 1, 30);
				write('Não há mais espaços para contatos!');
			end;
	end;
	
procedure SimMenu;
	var
	i: integer;
begin
	clrscr;
  textcolor(10);
  gotoxy(60 - (length('O que você deseja alterar?') div 2) + 1, 3);
  write('O que você deseja alterar?');
  for i := 1 to 7 do
  begin
  	if (i = opc) then
		  textcolor(15)
		else
			textcolor(8);

	  gotoxy(60 - (length(opcMenu[i]) div 2) + 1, 5 + (2 * i));
	  write(opcMenu[i]);
	end;
	
end;

procedure teclasSimMenu;
var 
	tec: char;
begin
	repeat 
		SimMenu;
		
		tec := readkey;
	  
		if (tec = #80) then       
		  opc := opc + 1
	  else if(tec = #72) then 	
	  	opc := opc - 1;
	  
	  if (opc = 8) then
	  	opc := 1;
	  	
	  if (opc = 0) then
	  	opc := 7;
	  	
	until (tec = #13);

end;

Begin
	Adicionar;

	repeat
	  teclasSNMenu;	  	  
	  case (opcao) of
      1: begin
      	repeat   
      		teclasSimMenu;
						case (opc) of
							1: begin
								clrscr;
								gotoxy(33,15);
								textcolor(13);
								write('Digite o novo nome: ');
								textcolor(15);
								read(Add.Nome);
							end;
							2: begin
								clrscr;
								gotoxy(33,15);
								textcolor(13);
								write('Digite o novo Apelido: ');
								textcolor(15);
								read(Add.Apelido);
							end;
							3: begin
								clrscr;
								gotoxy(33,15);
								textcolor(13);
								write('Digite o novo Telefone(Fixo): ');
								textcolor(15);
								read(Add.TeleF);
							end;
							4: begin
								clrscr;
								gotoxy(33,15);
								textcolor(13);
								write('Digite o novo Telefone(Celular: ');
								textcolor(15);
								read(Add.TeleC);
							end;
							5: begin
								clrscr;
								gotoxy(33,15);
								textcolor(13);
								write('Digite o novo Endereço: ');
								textcolor(15);
								read(Add.Ender);
							end;
							6: begin
								clrscr;
								gotoxy(33,15);
								textcolor(13);
								write('Digite o novo Email: ');
								textcolor(15);
								read(Add.Mail);
							end;
						end;
				until opc = 7;						 
      end;
      2: salvar;
    end;
	  
	  readln;
	  	
	until opcao = 2;                                                                                             
	
End.