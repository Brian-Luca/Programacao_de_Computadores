var
	opcao,aux: integer; 

Procedure menu; //procedimento menu
	begin
		gotoxy(44,10);
		textcolor(12);
		textbackground(4);
		writeln('Instruções: Cara(1) / Coroa(0)');
		gotoxy(50,13); //move o texto
		textcolor(15);
		textbackground(0); 
		writeln('1 - Lançar moeda.');
		gotoxy(50,14);
		textcolor(15);
    writeln('0 - Sair.   ');
		gotoxy(50,15);
		textcolor(15);
    write('Opção: ');
    end;
    
Begin
	  randomize; //Faz com que o número nunca se repita
		Repeat //repete o programa
				clrscr; //limpa o ecrã
				menu;
				readln(opcao); //lê a opção
				case (opcao) of //caso a opção seja 1
 	      		1: begin //começa o case por que tem 2 procedimentos
 	      					clrscr;
						 			aux:=random(2); //números aleatorios de 0-1
						 			gotoxy(50,15);
						 			textcolor(15);
 	      					write('Resultado: ');
 	      					textcolor(12);
 	      					write( aux);
 	      			 end;
 				end;
 				readln; //lê o case para que se possa ver o resultado m
 	until (opcao = 0);  //termina o repeat
End.