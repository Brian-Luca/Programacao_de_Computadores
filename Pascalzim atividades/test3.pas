Program Pzim ;

var
	t,l: integer;
	a:array[1..5, 1..5] of string;
	op: char;
Begin
	     
	a[1,1]:= 'a';
	a[1,2]:= 'b';
	a[1,3]:= 'c';
	a[1,4]:= 'd';
	a[1,5]:= 'e';
	
	
	writeln(a[1,1]);
	writeln(a[1,2]);
	writeln(a[1,3]);
	writeln(a[1,4]);
	writeln(a[1,5]);
	
	
	t:=1;
	                                                        
	op:= readkey;	
    if(op = #80) then       
    t:= t + 1
    else if(op = #72) then 	
    t:= t - 1;
    
	case (t) of
		1:
	
	 readln;
	 
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
End.