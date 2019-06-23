Program Pzim ;
Var
	NS: array[1..50] of integer;
	NE: array[1..9] of integer;
	cont,u,j,i,p: integer;
	NumS: array[1..5] of integer;
	NumE: array[1..2] of integer;
	f: boolean;
	opcao:integer;

procedure menu1;
begin
  textbackground(0);
  clrscr;
  gotoxy(1,7);
  textcolor(14);
  Writeln('________________________________________________________LOTOEURO________________________________________________________');
  textcolor(15);
  gotoxy(29,10);
  textbackground(6);
  write('Escolher Números');
  textbackground(0);
  gotoxy(29, 12);
  write('Ver Premio'      );
  gotoxy(29, 14);
  write('Sair'            );
end;

procedure menu2;
begin
  textbackground(0);
  clrscr;
  gotoxy(1,7);
  textcolor(14);
  Writeln('________________________________________________________LOTOEURO________________________________________________________');
  textcolor(15);
  textbackground(0);
  gotoxy(29,10);
  write('Escolher Números');
  textbackground(6);
  gotoxy(29, 12);
  write('Ver Premio'      );
  textbackground(0);
  gotoxy(29, 14);
  write('Sair'						);
end;

procedure menu3;
begin
  textbackground(0);
  clrscr;
  gotoxy(1,7);
  textcolor(14);
  Writeln('________________________________________________________LOTOEURO________________________________________________________');
  textcolor(15);
  textbackground(0);
  gotoxy(29,10);
  write('Escolher Números');
  gotoxy(29, 12);
  write('Ver Premio'      );
  textbackground(6);
  gotoxy(29, 14);
  write('Sair'						);
end;

procedure menu;
var
op: char;

begin
  opcao:= 1;
  repeat
    case (opcao) of
      1: menu1;
      2: menu2;
      3: menu3;
    end;
    op:= readkey;	
    if(op = #80) then       
    opcao:= opcao + 1
    else if(op = #72) then 	
    opcao:= opcao - 1;
    
    if(opcao = 4) then      
    opcao:= 1        
    else if(opcao = 0) then 
    opcao:= 3; 
  until (op = #13);
end;

procedure Loto;
	begin
		clrscr;
		Writeln('Escolha Seus 5 Números da Sorte!!!');
		for p:= 1 to 5 do
			begin
				Write(p,'º Número: ');
				Readln(NumS[p]);
				clrscr;
			end;
		Writeln('Escolha Seus 2 Números Estrela!!!');
		for p:= 1 to 2 do
			begin
				Write(p,'º Número: ');
				Readln(NumE[p]);
				clrscr;
			end;
	
		cont:= 1;
			repeat
				u:= random(50)+1;
				f:= false;
				if(cont>1) then
					for j:= 1 to cont-1 do
						if(NS[j] = u) then
							f:=true;		
			
				if(f = false) then
					begin
						NS[cont]:= u; 
						cont:= cont + 1;
					end;
			until(cont>50);
			
		cont:= 1;
			repeat
				u:= random(9)+1;
				f:= false;
				if(cont>1) then
					for j:= 1 to cont-1 do
						if(NE[j] = u) then
							f:=true;		
			
				if(f = false) then
					begin
						NS[cont]:= u; 
						cont:= cont + 1;
					end;
			until(cont>9);
		
		gotoxy(0,0);
		Writeln('Números Sortidos:');	
		for i:= 1 to 5 do
			begin
				write(NS[i],', ');
				readln;
			end;
		
		writeln(' ');
			
		gotoxy(30,0);
		Writeln('Seus Números da Sorte:');
		for p:= 1 to 5 do
				begin
					gotoxy(30, 0+p);
					Write(NumS[p]);
				end;
				readln;
					
		clrscr;
		Writeln('Números Estrelas:');	
		for i:= 1 to 2 do
			begin	
				write(NS[i]);
				readln;
		  end;
		
		Writeln('Seus Números Estrela:');
		for p:= 1 to 2 do
		begin	
				Write(NumE[p]);	
			  readln;
		end;
	end;

Begin 
  repeat
    menu;
    case (opcao) of
      1	: loto;
			3 : begin
				gotoxy(52,20);
				textbackground(0);
				textcolor(14);   
				write('Programa Encerrado.');
				readln;				
			end
			  
      
      Else begin
      	gotoxy(48,20);
      	  textcolor(14);
      		write('Essa opção ainda não está ativa!');
 	    end; 
 	     readln;
 	end;          
  until (opcao = 3); 
End.