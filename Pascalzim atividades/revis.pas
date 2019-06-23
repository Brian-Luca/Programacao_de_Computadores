Program Pzim ;
	type
		Aluno = record
			cod_aluno: integer;
			nome: string;
			nota: real;
		end;
	var
		b,op,opcao,p:integer;
		n:Aluno;
		nome: array [1..5] of string;
		valor: array[1..5] of real;
		A: array[1..5] of Aluno;
		f:boolean;
		
procedure Luno;
	Begin
		for b:= 1 to 5 do
			begin
				clrscr;
				writeln('Informe o Codígo do Aluno seu Nome e sus Nota.');
				write('Codigo do ',b,' Aluno: ');
				readln(n.cod_aluno);
				A[b].cod_aluno:= n.cod_aluno;
				write('Seu Nome: ');
				readln(n.nome);
				A[b].nome:= n.nome;
				Write('Sua Nota: ');
				readln(n.nota);
				A[b].nota:= n.nota;
			end;
end;

procedure list;
	begin
		for b:= 1 to 5 do
				begin
					clrscr;
					writeln('O(A) Aluno(a) de Codigo: ',A[b].cod_aluno,' e de nome: ',A[b].nome,' teve: ', A[b].nota:2:2);
					readln;
				end;
	end;
	
procedure proc;
	begin
		clrscr;
		write('Informe o codigo do aluno: ');
		readln(p);	
		for b:=1 to 5 do
			begin
				if( p = A[b].cod_aluno) then
					begin
						f:=true;
						writeln(A[b].cod_aluno);
						writeln(A[b].nome);
						writeln(A[b].nota:2:2);
						readln;
					end;		
			end; 
	end;	
			
procedure menu1;
begin
  textbackground(0);
  clrscr;
  gotoxy(1,7);
  textcolor(14);
  writeln('______________________________________________ALUNOS______________________________________________');
  textcolor(15);
  gotoxy(29,10);
  textbackground(6);
  write('Informar');
  textbackground(0);
  gotoxy(29, 12);
  write('Listar' );
  gotoxy(29, 14);
  write('Procurar');
  gotoxy(29, 16);
  write('Sair'   );
end;

procedure menu2;
begin
  textbackground(0);
  clrscr;
  gotoxy(1,7);
  textcolor(14);
  writeln('______________________________________________ALUNOS______________________________________________');
  textcolor(15);
  textbackground(0);
  gotoxy(29,10);
  write('Informar');
  textbackground(6);
  gotoxy(29, 12);
  write('Listar');
  textbackground(0);
  gotoxy(29, 14);
  write('Procurar');
  gotoxy(29, 16);
  write('Sair');
end;

procedure menu3;
begin
  textbackground(0);
  clrscr;
  gotoxy(1,7);
  textcolor(14);
  writeln('______________________________________________ALUNOS______________________________________________');
  textcolor(15);
  textbackground(0);
  gotoxy(29,10);
  write('Informar');
  gotoxy(29, 12);
  write('Listar');
  textbackground(6);
  gotoxy(29, 14);
  write('Procurar');
  textbackground(0);
  gotoxy(29, 16);
  write('Sair');
end;

procedure menu4;
begin
  textbackground(0);
  clrscr;
  gotoxy(1,7);
  textcolor(14);
  writeln('______________________________________________ALUNOS______________________________________________');
  textcolor(15);
  textbackground(0);
  gotoxy(29,10);
  write('Informar');
  textbackground(0);
  gotoxy(29, 12);
  write('Listar');
  textbackground(0);
  gotoxy(29, 14);
  write('Procurar');
  textbackground(6);
  gotoxy(29, 16);
  write('Sair');
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
    end;
    op:= readkey;	
    if(op = #80) then       
    opcao:= opcao + 1
    else if(op = #72) then 	
    opcao:= opcao - 1;
    
    if(opcao = 5) then      
    opcao:= 1        
    else if(opcao = 0) then 
    opcao:= 4; 
  until (op = #13);
end;

Begin
  
  repeat
    menu;
    case (opcao) of
      1	: luno;
      2 : list;
      3 : proc;
			4 : begin
				gotoxy(52,20);
				textbackground(0);
				textcolor(14);   
				write('Programa Encerrado.');
				readln;				
			end
			  
      
      Else begin
      	gotoxy(48,20);
      	  textcolor(14);
      		write('Essa opção ainda não existe!');
 	    end; 
 	     readln;
 	end;     
      
  until (opcao = 4);
End.