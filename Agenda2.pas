Program Agenda;                                                  

type
		Agenda = record
			Nome: String[161];
			Apelido,TeleF,TeleC: String[20];
			Ender: String[150];
			Mail: String[50];
			Auxiliar: String;
		end;
		 
var
	opcoesMenu: array[1..6] of string = ('Ver', 'Inserir', 'Procurar', 'Apagar', 'Editar', 'Sair');
	opcao,opc,op,o,contEdit: integer = 1;
	Add,ap: Agenda;
	All: array[1..100, 1..6] of string;
	j,cont: integer;
	opmenu: array[1..2] of string = ('Sim','Não');
	opcmenu: array[1..7] of string = ('Nome','Apelido','Telefone(Fixo)','Telefone(Celular)','Endereço','Email','Voltar');


procedure ver;
	var
		Verif: boolean;
	begin
		clrscr;
		textcolor(10);
	  gotoxy(60 - (length('Selecionar Contato') div 2) + 1, 3);
	  write('Selecionar Contato');
	  textcolor(13);
	  gotoxy(5, 7);
	  write('Nº do Contato:');
	  textcolor(13);
	  gotoxy(35, 7);
	  write('Apelido:');
	  textcolor(13);
	  gotoxy(60, 7);
	  write('Telefone(Celular):');
	  textcolor(13);
	  gotoxy(90, 7);
	  write('Email:');
	  
	  cont:= 1;
	  Verif:= false;
		repeat
			if (cont = o) then
				textcolor(15)
			else
				textcolor(8);
				
			if (all[cont,1] <> '') then
				begin 			
				  gotoxy(11, 8 + (2 * cont));
				  write(cont,'º');
				  gotoxy(38 - (length(All[cont,2]) div 2) + 1, 8 + (2 * cont));				  
				  write(All[cont,2]);
				  gotoxy(68 - (length(All[cont,4]) div 2) + 1, 8 + (2 * cont));
				  write(All[cont,4]);
				  gotoxy(90, 8 + (2 * cont));
				  write(All[cont,6]);
				  	Verif:= true;
				end;
				cont:= cont + 1;
		until (cont > 100) or (all[cont,1] = '') and (Verif);
			if (all[1,1] = '') then
				begin
					textcolor(12);
					gotoxy(60 - (length('A lista está Vazia') div 2) + 1,15);
					write('A lista está Vazia');
					textcolor(14);
					gotoxy(60 - (length('Aperte Enter Três vezes para voltar.') div 2) + 1,16);
					write('Aperte Enter três vezes para voltar.');
				end;  
	end;

Procedure VerOp;
	var
		tecla: char;
		
			
	begin
	repeat 
		Ver;
		
		tecla := readkey;
	  
		if (tecla = #80) then       
		  o := o + 1
	  else if(tecla = #72) then 	
	  	o := o - 1;
	  
	  if (o = cont) then
	  	o := 1;
	  	
	  if (o = 0) then
	  	o := cont-1;
	  	
	until (tecla = #13);

end;

procedure Detalhes;
	var
		Det: array[1..2, 1..6] of Agenda;
		
	begin
	 	clrscr;                                                      
	
		Det[1,1].Nome:= 'Nome: ';
	  Det[1,2].Apelido:= 'Apelido: ';
	  Det[1,3].TeleF:= 'Telefone(Fixo): ';
	  Det[1,4].TeleC:= 'Telefone(Celular): ';
	  Det[1,5].Ender:= 'Endereço: ';
	  Det[1,6].Mail:= 'Email: ';
	           
	  Det[2,1].Nome:= All[o,1];
	  Det[2,2].Apelido:= All[o,2];
	  Det[2,3].TeleF:= All[o,3];
	  Det[2,4].TeleC:= All[o,4];
	  Det[2,5].Ender:= All[o,5];
	  Det[2,6].Mail:= All[o,6];
		
		gotoxy(33,8);
		textcolor(11);
		writeln(Det[1,1].Nome);
		gotoxy(33,11);
		writeln(Det[1,2].Apelido);
		gotoxy(33,14); 
		writeln(Det[1,3].TeleF); 
		gotoxy(33,17);
		writeln(Det[1,4].TeleC); 
		gotoxy(33,20);
		writeln(Det[1,5].Ender);
		gotoxy(33,23);
		writeln(Det[1,6].Mail);
		
		textcolor(15);
		gotoxy(length('Nome: ') + 35,8);
		write(Det[2,1].Nome);
		gotoxy(length('Apelido: ') + 35,11);
		write(Det[2,2].Apelido);
		gotoxy(length('Telefone(Fixo): ') + 35,14);
		write(Det[2,3].TeleF);
		gotoxy(length('Telefone(Celular): ') + 35,17);
		write(Det[2,4].TeleC);
		gotoxy(length('Endereço: ') + 35,20);
		write(Det[2,5].Ender);
		gotoxy(length('Email: ') + 35,23);
		write(Det[2,6].Mail);
		textcolor(14);
		gotoxy(60 - (length('Aperte Enter Duas vezes para voltar.') div 2) + 1,30);
		write('Aperte Enter duas vezes para voltar.');
		textcolor(9);
		gotoxy(60 - ((length('Detalhes de ') + length(Det[2,2].Apelido)) div 2) + 1,1);
		write('Detalhes de ');
		textcolor(11);
		write(Det[2,2].Apelido);
		readln;   
	end;

procedure SelecVer;
	var
  	w: integer;
  	t: char;
  	f: boolean;
  	
	begin
		repeat
			VerOp;
			t:= readkey;
			f:= false;
			for w:= 1 to 100 do
				begin 
					if (w = o) then
					 Begin
					 	if (all[1,1] = '') then
					 		exit
					 	else
							Detalhes;
							exit;
						end;
					end;		
		until (t = #13);					 
	end;
	
	procedure Adicionar;
		Begin
			gotoxy(60 - (length('Adicionar Contato') div 2) + 1, 3);
			textcolor(10);
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
		  gotoxy(60 - (length('Deseja Alterar algo?') div 2) + 1, 23);
		  write('Deseja Alterar algo?');
		  for i := 1 to 2 do
		  begin
		  	if (i = op) then
				  textcolor(15)
				else
					textcolor(8);
		
			  gotoxy(38 - (length(opMenu[i]) div 2) + (15 * i), 25);
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
			  op := op + 1
		  else if(tecla = #75) then 	
		  	op := op - 1;
		  
		  if (op = 3) then
		  	op := 1;
		  	
		  if (op = 0) then
		  	op := 2;
		  	
		until (tecla = #13);
	
	end;
	
	procedure salvar;
	var
		flag: boolean;
		contador: integer;
		
		
		begin
			flag:= false; contador:= 1;
			repeat
			 if (all[contador,1] = '') then
				begin
					all[contador,1]:= Add.Nome;
					all[contador,2]:= Add.Apelido;
					all[contador,3]:= Add.TeleF;
					all[contador,4]:= Add.TeleC;
					all[contador,5]:= Add.Ender;
					all[contador,6]:= Add.Mail;
						flag:= true;
				end;
				contador:= contador + 1;	
			until ((contador > 100) or (flag));
			if ((contador > 100) and (flag = false)) then
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
	
	
Procedure Inserir;
	Begin
		clrscr;
		Adicionar;
	
		repeat
		  teclasSNMenu;	  	  
		  case (op) of
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
	      2: begin
					salvar;
					textcolor(12);
					gotoxy(60 - (length('Salvando...') div 2) + 1, 27);
					write('Salvando...');
					textcolor(14);
					gotoxy(60 - (length('Pressione uma tecla duas vezes para voltar ao menu.') div 2) + 1, 28);
					write('Pressione uma tecla duas vezes para voltar ao menu.');
				end;
	    end;
		  
		  readln;
		  	
		until op = 2;                                                                                             
		
end;

procedure guardar;	
	begin
		begin
			all[contEdit,1]:= Add.Nome;
			all[contEdit,2]:= Add.Apelido;
			all[contEdit,3]:= Add.TeleF;
			all[contEdit,4]:= Add.TeleC;
			all[contEdit,5]:= Add.Ender;
			all[contEdit,6]:= Add.Mail;
		end;
	end;

procedure edit;
	begin
		repeat
		  teclasSNMenu;	  	  
		  case (op) of
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
	      2: begin
					guardar;
					textcolor(12);
					gotoxy(60 - (length('Salvando...') div 2) + 1, 27);
					write('Salvando...');
					textcolor(14);
					gotoxy(60 - (length('Pressione uma tecla duas vezes para voltar ao menu.') div 2) + 1, 28);
					write('Pressione uma tecla duas vezes para voltar ao menu.');
				end;
	    end;
		  
		  readln;
		  	
		until op = 2;
end;			

procedure Procurar;

var
	cont: integer = 1;
	Testa: boolean;
	
begin
	clrscr;
	gotoxy(33,15);
	textcolor(13);
	Write('Digite o Apelido do contato: ');
	textcolor(15);
	Readln(ap.Apelido);
	testa:= false;
	repeat
		if(ap.Apelido = All[cont,2]) then
			begin
				clrscr;
				gotoxy(33,5);
				textcolor(11);
				write('Contato Nº: ');
				textcolor(15);
				write(cont);
				gotoxy(33,8);
				textcolor(11);
				write('Nome: ');
				textcolor(15);
				write(All[cont,1]);
				gotoxy(33,11);
				textcolor(11);
				write('Apelido: ');
				textcolor(15);
				write(All[cont,2]);
				gotoxy(33,14);
				textcolor(11);
				write('Telefone(Fixo): ');
				textcolor(15);
				write(All[cont,3]);
				gotoxy(33,17);
				textcolor(11);
				write('Telefone(Celular: ');
				textcolor(15);
				write(All[cont,4]);
				gotoxy(33,20);
				textcolor(11);
				write('Endereço: ');
				textcolor(15);
				write(All[cont,5]);
				gotoxy(33,23);
				textcolor(11);
				write('Email: ');
				textcolor(15);
				write(All[cont,6]);
					testa:= true;
			end;
			cont:= cont + 1;
	until((cont > 100) or (testa));
		if ((cont > 100) and (testa = false)) then
			begin
				gotoxy(60 - (length('Contato Não encontrado.') div 2) + 1, 27);
				textcolor(12);
				Write('Contato NÃO encontrado.');
			end;
end;

procedure DelMenu;
	var
	i: integer;
	
	begin
	  textcolor(10);
	  gotoxy(60 - (length('Deseja apagar o contato?') div 2) + 1, 23);
	  write('Deseja apagar o contato?');
	  for i := 1 to 2 do
	  begin
	  	if (i = op) then
			  textcolor(15)
			else
				textcolor(8);
	
		  gotoxy(43 + (i*10) + (i*1), 25);
		  write(opMenu[i]);
		end;
		
	end;
	
procedure DelTec;
	var 
		tecla: char;
	begin
		repeat 
			DelMenu;
			
			tecla := readkey;
		  
			if (tecla = #77) then       
			  op := op + 1
		  else if(tecla = #75) then 	
		  	op := op - 1;
		  
		  if (op = 3) then
		  	op := 1;
		  	
		  if (op = 0) then
		  	op := 2;
		  	
		until (tecla = #13);
	
	end;		

procedure Apagar;
	var
		Apc: Agenda;
		testa: boolean;
		cont: integer = 1;

	begin
		clrscr;
		gotoxy(33,15);
		textcolor(13);
		write('Digite o Apelido do contato: ');
		textcolor(15);
		read(Apc.Apelido);
		
		testa:= false;
		repeat
			if(Apc.Apelido = All[cont,2]) then
				begin
					DelTec;
						case (op) of
							1: begin
								All[cont,1]:= '';
								All[cont,2]:= '';
								All[cont,3]:= '';
								All[cont,4]:= '';
								All[cont,5]:= '';
								All[cont,6]:= '';
							end;
							2: begin
								textcolor(14);
								gotoxy(60 - (length('Pressione uma tecla duas vezes para voltar ao menu.') div 2) + 1, 28);
								write('Pressione uma tecla duas vezes para voltar ao menu.');
								exit;
							end;
						end;
					testa:= true;
				end;
			cont:= cont + 1;
		until((cont > 100) or (testa));
		if ((cont > 100) and (testa = false)) then
			begin
				gotoxy(60 - (length('Contato Não encontrado.') div 2) + 1, 27);
				textcolor(12);
				Write('Contato NÃO encontrado.');
			end;	
	end;

procedure Editar;
	var
		Apc: Agenda;
		testa: boolean;

	begin
		clrscr;
		gotoxy(33,15);
		textcolor(13);
		write('Digite o Apelido do contato: ');
		textcolor(15);
		read(Apc.Apelido);
		contEdit:= 1;
		testa:= false;
		repeat
			if(Apc.Apelido = All[contEdit,2]) then
				begin
					edit;
					testa:= true;
				end;
			contEdit:= contEdit + 1;
		until((contEdit > 100) or (testa));
		if ((contEdit > 100) and (testa = false)) then
			begin
				gotoxy(60 - (length('Contato Não encontrado.') div 2) + 1, 27);
				textcolor(12);
				Write('Contato NÃO encontrado.');
			end;	
	end;

procedure ItensMenu;
var
	i: integer;
begin
  clrscr;
  textcolor(10);
  gotoxy(60 - (length('<------Agenda de Contatos------>') div 2) + 1, 7);
  write('<------Agenda de Contatos------>');
  for i := 1 to 6 do
  begin
  	if (i = opcao) then
		  textcolor(15)
		else
			textcolor(8);

	  gotoxy(60 - (length(opcoesMenu[i]) div 2) + 1, 8 + (2 * i));
	  write(opcoesMenu[i]);
	end;
	
end;

procedure inic;
begin
	for j:= 1 to 100 do 
		all[j,1] := '';
end;

procedure Menu;
var 
	tecla: char;
begin

	repeat 
		ItensMenu;
		
		tecla := readkey;
	  
		if (tecla = #80) then       
		  opcao := opcao + 1
	  else if(tecla = #72) then 	
	  	opcao := opcao - 1;
	  
	  if (opcao = 7) then
	  	opcao := 1;
	  	
	  if (opcao = 0) then
	  	opcao := 6;
	  	
	until (tecla = #13);

end;

Begin
	repeat
	  Menu;
		gotoxy(60 - (length('Trabalho Realizado Por Brian Luca') div 2) + 1, 1);
		textcolor(11);
		write('Trabalho Realizado Por ');
		textcolor(15);
		write('Brian Luca');
		textcolor(14);
		gotoxy(60 - (length('CSG - 10º 1C') div 2) + 1, 2);
		write('CSG - 10º 1C');
    gotoxy(50, 23);
    textcolor(red);
	  write('Opção selecionada: ', opcoesMenu[opcao]);	  
	  
	  case (opcao) of
      1: begin
          Selecver;
      end;
      2: begin
          Inserir;
      end;
      3: begin
          Procurar;      
      end;
      4: begin
          Apagar;      
      end;
      5: begin
          Editar;
      end;
      6: begin
         textcolor(12);   
         gotoxy(60 - (length('Programa Encerrado.') div 2) + 1, 25);
	    	 write('Programa Encerrado.');
      end;
    end;
	  
	  readln;
	  	
	until opcao = 6;
  
End.