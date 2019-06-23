{
programa desenvolvido por : jamesbond
nome do arquivo: bolha.pas
data:
formas de ordenação de vetores
}

{==============================================================================}
program trab1;{ nome do programa }
uses
   crt;
var 
  i, j,
  aux,
  opt   :integer;
{var}
  sair  :boolean;
  vetor :array [1..3] of integer;

{==============================================================================}
procedure lervetor; //procedimento para leitura dos vetores
  begin
  textcolor(10);
  writeln('digite o valor');
  textcolor(15);
  for i := 1 to 3 do
    readln(vetor[i]);
  writeln;
  readln;
  end;

{==============================================================================}
procedure mostravetor; //procedimento que imprime os vetores não ordenados
  begin
  for i:= 1 to 3 do
    writeln('vetor ',i,' dados ',vetor[i]);
  writeln;
  readln;
  end;

{==============================================================================}
procedure ordenar;
  begin
  for i:= 1 to 3-1 do
    for j := 2 to 3 do
      if (vetor[i] < vetor[j]) then
        begin
          aux := vetor[i];
          vetor[i] := vetor[j];
          vetor[j] := aux;
        end;
  for i:= 1 to 3 do
    writeln('dados ',i,': ',vetor[i]);
  writeln;
  readln;
  end;

{==============================================================================}
procedure ordenarcres;
  begin
  for i:= 1 to 3-1 do
    for j := 2 to 3 do
      if (vetor[i] > vetor[j]) then
        begin
        aux := vetor[i];
        vetor[i] := vetor[j];
        vetor[j] := aux;
        end;
  for i:= 1 to 3 do
    writeln('dados ',i,': ',vetor[i]);
  writeln;
  readln;
  end;

{==============================================================================}
BEGIN //inicio do programa
sair:=false;
while sair = false do
  begin
  clrscr;
  textcolor(12);write('--------------------------------------------------------------------------------');
  textcolor(12);write('|');textcolor(10);write('programa bolha desenvolvimento - uninove 2010 professor castro a. uninove 2010');textcolor(12);write('|');
  textcolor(12);write('--------------------------------------------------------------------------------');
  textcolor(12);writeln('________________________________________________________________________________');
  textcolor(10);write('|');textcolor(10);write('['); textcolor(12);write('1');textcolor(10);write(']');textcolor(10);writeln(' opcao 1 inserir dados no vetor');write('');
  write('|');textcolor(10);write('['); textcolor(12);write('2');textcolor(10);write(']');textcolor(10);writeln(' opcao 2 mostra dados do vetor');
  write('|');textcolor(10);write('['); textcolor(12);write('3');textcolor(10);write(']');textcolor(10);writeln(' opcao 3 mostrar dados  ordenados do vetor');
  write('|');textcolor(10);write('['); textcolor(12);write('4');textcolor(10);write(']');textcolor(10);writeln(' opcao 4 mostrar dados ordenados  crescentes no vetor');
  write('|');textcolor(10);write('['); textcolor(12);write('5');textcolor(10);write(']');textcolor(10);writeln(' opcao 5 sair');
  textcolor(12);writeln('________________________________________________________________________________');
  textcolor(12);write('--------------------------------------------------------------------------------');
  textcolor(12);write('|');textcolor(10);write('programa bolha desenvolvimento - uninove 2010 professor castro a. uninove 2010');textcolor(12);write('|');
  textcolor(12);write('--------------------------------------------------------------------------------');
  textcolor(15);writeln;
  readln(opt);
  writeln;
  case opt of
    1:lervetor;
    2:mostravetor;
    3:ordenar;
    4:ordenarcres;
    5:sair:=true
  else
    begin
    writeln('opcao invalida!!!');
    writeln;
    readln;
    end;
    textcolor(10);write('================================================================================');
    textcolor(12);write('programa bolha desenvolvimento  -  uninove 2010 professor carlos a. uninove 2010');
    textcolor(10);write('================================================================================');
    end; {fim case}
  end;
end. // fim do programa

{==============================================================================}
