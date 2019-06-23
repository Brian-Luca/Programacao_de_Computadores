Program Pzim ;

// Vari?veis GLOBAIS
var 
	i: integer;
	opcao: integer;
	
procedure sabeCor;
	begin
		//muda a cor de fundo
 		textbackground(0);
 		clrscr;
 
 		//Lista a tabela de cores
 		for i:= 0 to 15 do
 			begin  	
 				//mudar a posi??o do texto
    				gotoxy(30, 5+i);
    			
    				// Muda a cor do texto
    				textcolor(i);
    				writeln('Esta e a minha cor (COD: ',i,')');
    			end;	
    readln;
	end;	
	
procedure menu1;
	begin
		//muda a cor de fundo
 		textbackground(0);
 		clrscr;
 		gotoxy(29,5);
 		textbackground(13);
 		write(' 1 - Ver Cores Para o Texto '); 	
 		textbackground(0);
 		gotoxy(29, 7);
 		write(' 2 - Listar Dados           ');
 		gotoxy(29, 11); 
 		write(' 0 - Sair                   ');	
 	end;
 	
procedure menu2;
	begin
		//muda a cor de fundo
 		textbackground(0);
 		clrscr;
 		gotoxy(29,5);
 		write(' 1 - Ver Cores Para o Texto '); 	
 		textbackground(13);
 		gotoxy(29, 7);
 		write(' 2 - Listar Dados           ');  	
 		textbackground(0);
 		gotoxy(29, 11); 
 		write(' 0 - Sair                   ');
	end;
	
procedure menu3;
	begin
	     //muda a cor de fundo
 		textbackground(0);
 		clrscr;
 		gotoxy(29,5);
 		write(' 1 - Ver Cores Para o Texto '); 
 		gotoxy(29, 7);
 		write(' 2 - Listar Dados           ');  	
 		textbackground(13);
 		gotoxy(29, 11); 
 		write(' 0 - Sair                   ');
	end;
	
procedure menu;
	var
		op: char; // Vari?vel LOCAL
		
	begin
		opcao := 1;
		repeat
			case (opcao) of
				1: menu1;
				2: menu2;
				3: menu3;
			end;
			op:= readkey;	// l? uma tecla
			if(op = #80) then          // tecla para baixo
				opcao:= opcao + 1
			else if(op = #72) then 	  // tecla para cima
				opcao:= opcao - 1;
		
			if(opcao = 4) then         // como s? h? 3 op??es, tem de voltar ? 
				opcao:= 1            // primeira op??o
			else if(opcao = 0) then         // como est? no topo, tem de ir para a 
				opcao:= 3;           // ?ltima op??o
		until (op = #13); // Repete at? ser teclado o ENTER		
	end;

 Begin
 	
 	repeat
 	     menu;
 	     case (opcao) of
				1: sabeCor;
			 end;	
 	
 	until (opcao = 3);
 	
  
 End.
