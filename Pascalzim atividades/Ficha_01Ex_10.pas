var
	num,dado: integer;

procedure menu;
	begin
		writeln('Simulador de um Dado:');
		writeln('1 - Lan�ar dado.');
		writeln('0 - terminar programa.');
		write('Op��o:	');
	end;
				
Begin
	randomize;
		repeat
			clrscr;
			menu;
			read(num);
			case (num) of
				1: begin
					clrscr;
					dado:=random(5)+1;
					write('Resultado: ');
					writeln(dado);
 				end;	
 			end;
 			readln;
 		until (num = 0);	
End.