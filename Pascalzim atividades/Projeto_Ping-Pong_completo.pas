Program PING_PONG;


const cantoCima = 2 ;
      cantoBaixo = 10 ;
      cantoEsquerda = 2 ;
      cantoDireita = 38 ;

var bolaX, bolaY: integer;  
    raquete1X, raquete1Y: integer; 
    raquete2X, raquete2Y: integer; 
    moveBolaDireita, moveBolaBaixo: boolean ;   
    pontos: integer;
    acabouJogo: boolean ; 


 
 procedure DesenhaCampo;
 begin    
      textcolor(white);
     gotoxy(1,1);     
    writeln(#201,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#203,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#187);
     writeln(#186,'                  ',#176,'                  ',#186);
     writeln(#186,'                  ',#176,'                  ',#186);
     writeln(#186,'                  ',#176,'                  ',#186);
     writeln(#186,'                  ',#176,'                  ',#186);
     writeln(#186,'                  ',#176,'                  ',#186);
     writeln(#186,'                  ',#176,'                  ',#186);
     writeln(#186,'                  ',#176,'                  ',#186);
     writeln(#186,'                  ',#176,'                  ',#186);
     writeln(#186,'                  ',#176,'                  ',#186);
     writeln(#200,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#202,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#188);
    writeln(''); 
    writeln('------------------------');     
     writeln('PING PONG');
    writeln('------------------------');          
     writeln('- Joao Carvalho 101C');
     writeln('- CSG');
     writeln('');
    writeln('Controlos Jogador 1 => seta para cima, seta para baixo.');     
     writeln('Controlos Jogador 2 => 1 para cima, 3 para baixo');    
     writeln('');    
     if(pontos <> 0) then writeln('Pontos: ', pontos);                 
 end;
       
 procedure moveBola ;
 Begin
    
    if (moveBolaDireita) then 
      bolaX:= bolaX + 1
    else
      bolaX:= bolaX - 1;
                                 
    
    if (moveBolaBaixo) then 
      bolaY:= bolaY + 1
    else 
      bolaY:= bolaY - 1;    
         
    
    if (bolaY = cantoBaixo) or (bolaY = cantoCima) then 
       moveBolaBaixo := not moveBolaBaixo ;
    
    
    gotoxy(bolaX,bolaY);
    write(#219);  
 End ;
  
        
 procedure moveRaquetes ;
 var moveuRaquete : boolean ;
 Begin
        while keypressed do
    begin
       case readkey of
                                          
         #72: if (raquete1Y > cantoCima+1) then
              raquete1Y:= raquete1Y - 1;                
              
        
        #80:    if (raquete1Y < cantoBaixo) then
              raquete1Y:= raquete1Y + 1;
              
        
        '1': if (raquete2Y > cantoCima+1) then
           raquete2Y:= raquete2Y - 1;
            
                    
        '3':    if (raquete2Y < cantoBaixo) then
           raquete2Y:= raquete2Y + 1;       
       end;
    end ; 
    
      
     textcolor (lightred);
     gotoxy(raquete1X,raquete1Y);
     write(#219);
     gotoxy(raquete1X,raquete1Y -1);
     write(#219);     
    
     
     textcolor(lightblue);
     gotoxy(raquete2X,raquete2Y);
     write(#219);
     gotoxy(raquete2X,raquete2Y -1);
     write(#219) ;           
 End;  
    
   
 procedure VerificaChoqueRaquete ;
 Begin
  
   if (bolaX = raquete1X+1) then
    if (bolaY = raquete1Y) or (bolaY = raquete1Y-1) then   
    begin 
      moveBolaDireita := true ;
      pontos:= pontos + 1;
    end;

   if (bolaX = raquete2X-1) then
    if (bolaY = raquete2Y) or (bolaY = raquete2Y-1) then   
    begin 
      moveBolaDireita := false ;
      pontos := pontos + 1;
    end;       
 End;

  
 procedure iniciaJogo ;
 Begin
   randomize;
     
   bolaX:= 20;
   bolaY:= random(cantoBaixo-2) + 2;   
             
   moveBolaBaixo := true ;
   if(random(2) = 1) then
     moveBolaDireita := true 
   else
     moveBolaDireita := false ;  
   
   raquete1X:= cantoEsquerda;
   raquete1Y:= (cantoCima+cantoBaixo) div 2 ;
    
   raquete2X:= cantoDireita;
   raquete2Y:= (cantoCima+cantoBaixo) div 2 ;
   pontos := 0;

   acabouJogo := false ; 
   clrscr;
 End;

   
 procedure VerificaFimJogo ; 
 var resp : char ;
 Begin
   
   if(bolaX <> cantoEsquerda-1) and (bolaX <> cantoDireita+1) then
      exit ;
    
   textcolor(white);
   gotoxy(41,3);
   if (bolaX < cantoEsquerda) then
     writeln('Vencedor: Jogador 2') 
   else 
      writeln('Vencedor: Jogador 1');                   

   gotoxy(41,5);
   write('Digite <ENTER> para parar...');   
   gotoxy(41,7);
   write('Pressione outra tecla para jogar...');   
   resp := upcase(readkey);
                 
   if (resp= #13) then
   Begin
     acabouJogo := true ;
     exit ;
   End ; 
      
   iniciaJogo ;    
 End ;  
                   
 Begin  
     
     textbackground(green);      
     clrscr;
     DesenhaCampo;
     writeln('=> Pressione uma tecla para iniciar o jogo');     
      readkey ;

     iniciaJogo ;
     while not acabouJogo do
     begin
          delay(150);     
         DesenhaCampo;
          moveBola ;
          moveRaquetes ;
        VerificaChoqueRaquete ;    
          VerificaFimJogo ;      
     end;
 End.
