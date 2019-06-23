Program Agenda;		 
var
opcao: integer;

procedure menu1;
begin
  clrscr;
  gotoxy(47,7);
  textcolor(10);
  writeln('<------Agenda de Contatos------>');
  textcolor(15);
  gotoxy(62,10);
  write('Ver'    );
  textcolor(8);
  gotoxy(60, 12);
  write('Inserir');
  gotoxy(60, 14);
  write('Procurar');
  gotoxy(60, 16);
  write('Apagar' );
  gotoxy(60, 18);
  write('Editar' );
  gotoxy(61, 20);
  write('Sair'   );
end;

procedure menu2;
begin
  clrscr;
  gotoxy(47,7);
  textcolor(10);
  writeln('<------Agenda de Contatos------>');
  textcolor(8);
  gotoxy(62,10);
  write('Ver'    );
  textcolor(15);
  gotoxy(60, 12);
  write('Inserir');
  textcolor(8);
  gotoxy(60, 14);
  write('Procurar');
  gotoxy(60, 16);
  write('Apagar' );
  gotoxy(60, 18);
  write('Editar' );
  gotoxy(61, 20);
  write('Sair'	 );
end;

procedure menu3;
begin
  clrscr;
  gotoxy(47,7);
  textcolor(10);
  writeln('<------Agenda de Contatos------>');
  textcolor(8);
  gotoxy(62,10);
  write('Ver'    );
  gotoxy(60, 12);
  write('Inserir');
  textcolor(15);
  gotoxy(60, 14);
  write('Procurar');
  textcolor(8);
  gotoxy(60, 16);
  write('Apagar' );
  gotoxy(60, 18);
  write('Editar' );
  gotoxy(61, 20);
  write('Sair'	 );
end;

procedure menu4;
begin
  clrscr;
  gotoxy(47,7);
  textcolor(10);
  writeln('<------Agenda de Contatos------>');
  textcolor(8);
  gotoxy(62,10);
  write('Ver'    );
  gotoxy(60, 12);
  write('Inserir');
  gotoxy(60, 14);
  write('Procurar');
  textcolor(15);
  gotoxy(60, 16);
  write('Apagar' );
  textcolor(8);
  gotoxy(60, 18);
  write('Editar' );
  gotoxy(61, 20);
  write('Sair'	 );
end;

procedure menu5;
begin
  clrscr;
  gotoxy(47,7);
  textcolor(10);
  writeln('<------Agenda de Contatos------>');
  textcolor(8);
  gotoxy(62,10);
  write('Ver'    	);
  gotoxy(60, 12);
  write('Inserir'	);
  gotoxy(60, 14);
  write('Procurar');
  gotoxy(60, 16);
  write('Apagar' 	);
  textcolor(15);
  gotoxy(60, 18);
  write('Editar'	);
  textcolor(8);
  gotoxy(61, 20);
  write('Sair'		);
end;

procedure menu6;
begin
  clrscr;
  gotoxy(47,7);
  textcolor(10);
  writeln('<------Agenda de Contatos------>');
  textcolor(8);
  gotoxy(62,10);
  write('Ver'    	);
  gotoxy(60, 12);
  write('Inserir'	);
  gotoxy(60, 14);
  write('Procurar');
  gotoxy(60, 16);
  write('Apagar' 	);
  gotoxy(60, 18);
  write('Editar'	);
  textcolor(15);
  gotoxy(61, 20);
  write('Sair'		);
end;

procedure menu;
var
op: char;

begin
  opcao := 1;
  repeat
    case (opcao) of
      1: menu1;
      2: menu2;
      3: menu3;
      4: menu4;
      5: menu5;
      6: menu6;
    end;
    op:= readkey;	
    if(op = #80) then       
    opcao:= opcao + 1
    else if(op = #72) then 	
    opcao:= opcao - 1;
    
    if(opcao = 7) then      
    opcao:= 1        
    else if(opcao = 0) then 
    opcao:= 6; 
  until (op = #13);
end;

Begin
  
  repeat
    menu;
    case (opcao) of
      1	: ;
			6 : begin
				gotoxy(54,23);
				textbackground(0);
				textcolor(12);   
				write('Programa Encerrado.');
				readln;				
			end
			  
      
      Else begin
      	gotoxy(47,23);
      	  textcolor(12);
      		write('Essa opção ainda não está ativa!');
 	    end; 
 	     readln;
 	end;     
      
  until (opcao = 6);    
    
End.