Program Pzim ;
Uses Crt;
var
opcao: integer;


procedure jogo;
var
	vetor: array[1..20, 1..6] of string;
	cont,valor,g,j,tempo,i: integer;
	k: string;
	
	vetoraux: array[1..20] of integer;
	aux, nperg: integer;
	
begin
  vetor[1,1]:= 'Qual é o coletivo de cães?';
  vetor[1,2]:= 'A)Matilha';
  vetor[1,3]:= 'B)Rebanho';
  vetor[1,4]:= 'C)Cardume';
  vetor[1,5]:= 'D)Manada';
  vetor[1,6]:= 'A';
  
  vetor[2,1]:= 'Qual é o naipe do baralho que tem o desenho de coração';
  vetor[2,2]:= 'A)Ouros';
  vetor[2,3]:= 'B)Paus';
  vetor[2,4]:= 'C)Copas';
  vetor[2,5]:= 'D)Espadilhas';
  vetor[2,6]:= 'C';
  
  vetor[3,1]:= 'Segundo os contos, qual animal ao ser beijado se transforma em príncipe?';
  vetor[3,2]:= 'A)Cavalo';
  vetor[3,3]:= 'B)Cão'; 
  vetor[3,4]:= 'C)Gato';
  vetor[3,5]:= 'D)Sapo';
  vetor[3,6]:= 'D';
  
  vetor[4,1]:= 'Qual é o inseto que transmite adoença de Chagas?';
  vetor[4,2]:= 'A)Abelha';
  vetor[4,3]:= 'B)Barata'; 
  vetor[4,4]:= 'C)Barbeiro';
  vetor[4,5]:= 'D)Pulga';
  vetor[4,6]:= 'C';
  
  vetor[5,1]:= 'O que está no centro da Terra?';
  vetor[5,2]:= 'A)Manto';
  vetor[5,3]:= 'B)Núcleo'; 
  vetor[5,4]:= 'C)Hidrosfera';
  vetor[5,5]:= 'D)Litosfera';
  vetor[5,6]:= 'B';
  
  vetor[5,1]:= 'Quantos eram os anoes da historia A branca de neve?';
  vetor[5,2]:= 'A)Sete';
  vetor[5,3]:= 'B)Oito'; 
  vetor[5,4]:= 'C)Seis';
  vetor[5,5]:= 'D)Nove';
  vetor[5,6]:= 'A';
  
  vetor[6,1]:= 'Como eram chamados os navios que traziam os escravos para o Brasil?';
  vetor[6,2]:= 'A)Branqueiros';
  vetor[6,3]:= 'B)Pesqueiros'; 
  vetor[6,4]:= 'C)Negreiros';
  vetor[6,5]:= 'D)Costeiros';
  vetor[6,6]:= 'C';
  
  vetor[6,1]:= 'Quantas cores compõem oarco-íris?';
  vetor[6,2]:= 'A)3';
  vetor[6,3]:= 'B)7'; 
  vetor[6,4]:= 'C)12';
  vetor[6,5]:= 'D)22';
  vetor[6,6]:= 'B';
                                           
  vetor[7,1]:= 'Qual destes personagens não veste uma capa?';
  vetor[7,2]:= 'A)Super-Homem';
  vetor[7,3]:= 'B)Batman'; 
  vetor[7,4]:= 'C)Wolverine';
  vetor[7,5]:= 'D)Zorro';
  vetor[7,6]:= 'C';
  
  vetor[7,1]:= 'Quem é considerado o rei domundo animal?';
  vetor[7,2]:= 'A)Elefante';
  vetor[7,3]:= 'B)Gorila'; 
  vetor[7,4]:= 'C)Leão';
  vetor[7,5]:= 'D)Rinoceronte';
  vetor[7,6]:= '';
  
  vetor[7,1]:= 'Qual é o livro mais impresso no mundo?';
  vetor[7,2]:= 'A)Bíblia';
  vetor[7,3]:= 'B)Harry Potter'; 
  vetor[7,4]:= 'C)Senhor dos Anéis';
  vetor[7,5]:= 'D)Game Of Thrones';
  vetor[7,6]:= 'A';
  
  vetor[8,1]:= 'Como se chama o espaço de tempo entre o nascer e o pôr-do-sol?';
  vetor[8,2]:= 'A)Madrugada';
  vetor[8,3]:= 'B)Tarde'; 
  vetor[8,4]:= 'C)Dia';
  vetor[8,5]:= 'D)Noite';
  vetor[8,6]:= 'C';
  
  vetor[9,1]:= 'Como se chama o boneco controlado por cordas?';
  vetor[9,2]:= 'A)Robô';
  vetor[9,3]:= 'B)Marionete'; 
  vetor[9,4]:= 'C)Andróide';
  vetor[9,5]:= 'D)Manequim';
  vetor[9,6]:= 'B';
  
  vetor[10,1]:= 'Qual Deus é descrito como uma criança gorducha com arco eflecha?';
  vetor[10,2]:= 'A)Zeus';
  vetor[10,3]:= 'B)Netuno'; 
  vetor[10,4]:= 'C)Cupido';
  vetor[10,5]:= 'D)Mércurio';
  vetor[10,6]:= 'C';
  
  vetor[11,1]:= 'Qual destes alimentos devemos consumir em menor quantidade?';
  vetor[11,2]:= 'A)Frutas';
  vetor[11,3]:= 'B)Verduras'; 
  vetor[11,4]:= 'C)Gorduras';
  vetor[11,5]:= 'D)Legumes';
  vetor[11,6]:= 'C';
  
  vetor[12,1]:= 'Como se chama a luz que guia os navios em áreas de risco?';
  vetor[12,2]:= 'A)Vela';
  vetor[12,3]:= 'B)Farol'; 
  vetor[12,4]:= 'C)Fogueira';
  vetor[12,5]:= 'D)Lamparina';
  vetor[12,6]:= 'B';
  
  vetor[13,1]:= 'Em qual jogo o ganhador grita o nome do jogo em sinal de vitória?';
  vetor[13,2]:= 'A)Esconde-Esconde';
  vetor[13,3]:= 'B)Bingo'; 
  vetor[13,4]:= 'C)Uno';
  vetor[13,5]:= 'D)Xadrez';
  vetor[13,6]:= 'B';
  
  vetor[14,1]:= 'Qual é a cidade do Batman?';
  vetor[14,2]:= 'A)Gotham City';
  vetor[14,3]:= 'B)Metrópolis'; 
  vetor[14,4]:= 'C)PleasantVille';
  vetor[14,5]:= 'D)Anytown';
  vetor[14,6]:= 'A';
  
  vetor[15,1]:= 'O que Rapunzel jogava pela janela?';
  vetor[15,2]:= 'A)Perna';
  vetor[15,3]:= 'B)Braço'; 
  vetor[15,4]:= 'C)Família';
  vetor[15,5]:= 'D)Tranças';
  vetor[15,6]:= 'D';
  
  vetor[16,1]:= 'Onde a mamãe canguru carrega o filhote?';
  vetor[16,2]:= 'A)Na Orelha';
  vetor[16,3]:= 'B)Nas Costas'; 
  vetor[16,4]:= 'C)Na Boca';
  vetor[16,5]:= 'D)Na Bolsa';
  vetor[16,6]:= 'D';
  
  vetor[17,1]:= 'Como é o nome do pelo que envolve a cabeça do leão?';
  vetor[17,2]:= 'A)Topete';
  vetor[17,3]:= 'B)Cacho'; 
  vetor[17,4]:= 'C)Juba';
  vetor[17,5]:= 'D)Peruca';
  vetor[17,6]:= 'C';
  
  vetor[18,1]:= 'O que é um croissant?';
  vetor[18,2]:= 'A)Licor';
  vetor[18,3]:= 'B)Doce'; 
  vetor[18,4]:= 'C)Tempero';
  vetor[18,5]:= 'D)Pão';
  vetor[18,6]:= 'B';
  
  vetor[19,1]:= 'Qual exame é usado para comprovar a paternidade?';
  vetor[19,2]:= 'A)De Sangue';
  vetor[19,3]:= 'B)De DNA'; 
  vetor[19,4]:= 'C)De Urina';
  vetor[19,5]:= 'D)De Consciência';
  vetor[19,6]:= 'B';
  
  vetor[20,1]:= 'O que é uma sucuri?';
  vetor[20,2]:= 'A)Cobra';
  vetor[20,3]:= 'B)Refrigerante'; 
  vetor[20,4]:= 'C)Tipo de Laranja';
  vetor[20,5]:= 'D)Vaso Indígena';
  vetor[20,6]:= 'A';	

	clrscr;
		gotoxy(54,12);
		write('Está Pronto?');
		gotoxy(42,13);
	  write('Pressione qualquer tecla para começar.');
	  readln;
	  clrscr;
	  
	  // inicializa o numero das perguntas
	  for j:= 1 to 20 do
	  	vetoraux[j]:= j;
	  
	  nperg:= 20;
	  
	  repeat
	  randomize;
	    aux:=random(nperg)+1;
	    g:= vetoraux[aux];
	    
	    for j:= aux to nperg-1 do
	    	vetoraux[j]:= vetoraux[j+1];
	    	
	    nperg:= nperg - 1;
	    
	    Begin
	      cont:=cont+1;
	      Write('Você tem: ',valor,'$');
	      valor:=valor+5000;
	      gotoxy(100,1);
	      Write('Pergunta número ',cont,'/10');
	      gotoxy(30,8);
	      Writeln(vetor[g,1]);
	      gotoxy(30,9);
	      Writeln(vetor[g,2]);
	      gotoxy(30,10);
	      Writeln(vetor[g,3]);
	      gotoxy(30,11);
	      Writeln(vetor[g,4]);
	      gotoxy(30,12);
	      Writeln(vetor[g,5]);
	      gotoxy(30,13);
	      Readln(k);
	      if(k=vetor[g,6])then
	      Begin
	        if(cont=15)then
	        Begin
	          clrscr;
	          gotoxy(52,10);
	          Write('Esta certa!!!');
	          gotoxy(52,11);
	          Write('Mais 1000$');
	          readln;
	          clrscr;
	        end;
	        if(cont<>10)then
	        Begin
	          clrscr;
	          gotoxy(52,10);
	          Write('Esta certa!!!');
	          gotoxy(52,11);
	          Write('Mais 5000$');
	          readln;
	          clrscr;
	        end;
	      end;
	      if(k<>vetor[g,6])then
	      Begin
	        clrscr;
	        gotoxy(52,9);
	        Write('Resposta Errada :(');
	        valor:= valor-5000;
	        gotoxy(52,11);
	        Write('Você conseguiu: ',valor,'$');
	        gotoxy(56,12);
	        Write('PÁRABENS!!');
	        Readln;
	        exit;
	      end;
	    end;
	  Until(cont=10);
	  valor:=valor+50000;
	  clrscr;
	  gotoxy(45,15);
	  Write('Párabens, você ganhou ',valor,'$!!');
	  Readln;
	end;
	
procedure menu1;
begin
  textbackground(0);
  clrscr;
  gotoxy(1,7);
  textcolor(14);
  writeln('______________________________________________QUEM QUER SER UM MILIOÁRIO!?______________________________________________');
  textcolor(15);
  gotoxy(29,10);
  textbackground(6);
  write('Iniciar');
  textbackground(0);
  gotoxy(29, 12);
  write('Opções' );
  gotoxy(29, 14);
  write('Sair'   );
end;

procedure menu2;
begin
  //muda a cor de fundo
  textbackground(0);
  clrscr;
  gotoxy(1,7);
  textcolor(14);
  writeln('______________________________________________QUEM QUER SER UM MILIOÁRIO!?______________________________________________');
  textcolor(15);
  textbackground(0);
  gotoxy(29,10);
  write('Iniciar');
  textbackground(6);
  gotoxy(29, 12);
  write('Opções');
  textbackground(0);
  gotoxy(29, 14);
  write('Sair');
end;

procedure menu3;
begin
  //muda a cor de fundo
  textbackground(0);
  clrscr;
  gotoxy(1,7);
  textcolor(14);
  writeln('______________________________________________QUEM QUER SER UM MILIOÁRIO!?______________________________________________');
  textcolor(15);
  textbackground(0);
  gotoxy(29,10);
  write('Iniciar');
  gotoxy(29, 12);
  write('Opções');
  textbackground(6);
  gotoxy(29, 14);
  write('Sair');
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

Begin
  
  repeat
    menu;
    case (opcao) of
      1	: jogo;
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