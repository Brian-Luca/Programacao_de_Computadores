var
	opcao,aux: integer; 

Procedure menu; //procedimento menu
	begin
		gotoxy(44,10);
		textcolor(12);
		textbackground(4);
		writeln('Instru��es: Cara(1) / Coroa(0)');
		gotoxy(50,13); //move o texto
		textcolor(15);
		textbackground(0); 
		writeln('1 - Lan�ar moeda.');
		gotoxy(50,14);
		textcolor(15);
    writeln('0 - Sair.   ');
		gotoxy(50,15);
		textcolor(15);
    write('Op��o: ');
    end;
    
Begin
	  randomize; //Faz com que o n�mero nunca se repita
		Repeat //repete o programa
				clrscr; //limpa o ecr�
				menu;
				readln(opcao); //l� a op��o
				case (opcao) of //caso a op��o seja 1
 	      		1: begin //come�a o case por que tem 2 procedimentos
 	      					clrscr;
						 			aux:=random(2); //n�meros aleatorios de 0-1
						 			gotoxy(50,15);
						 			textcolor(15);
 	      					write('Resultado: ');
 	      					textcolor(12);
 	      					write( aux);
 	      			 end;
 				end;
 				readln; //l� o case para que se possa ver o resultado m
 	until (opcao = 0);  //termina o repeat
End.