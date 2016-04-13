program mat;
    const
      N=5;
      M=3;  
var
  a:array[1..N] of array[1..M] of Integer;
  i,j,d,k,p,tmp,tmpsum,w,x,b,ass:Integer;
  s:array[1..N] of Integer;   
begin                         
randomize;
  for i:=1 to N do
    begin
      for j:=1 to M do
        begin
         a[i][j]:=random(10);
         write(a[i][j]);    
         write(',');
        end;
        writeln;
    end;  
    d:=1;
    s[d]:=0; 
     for k:=1 to N do
    begin
      for p:=1 to M do
        begin
         s[d]:=s[d]+a[k][p];
        end;
        writeln(s[d]);    
        d:=d+1;
    end;
     for w:=2 to N do
    begin
      for x := N downto w do 
        begin
    			if (s[x-1]>s[x]) 
    			then
			begin   
				tmpsum:= s[x]; 
				s[x]:= s[x - 1];
				s[x - 1]:= tmpsum;
				 for b:=1 to M do   
             begin     
      					tmp:= a[x][b]; 
      					a[x][b]:= a[x - 1][b];
      					a[x - 1][b]:= tmp;
				     end;
			end;
		end;
	end;
	for i:=1 to N do
    begin
      for j:=1 to M do
        begin
         write(a[i][j]);
         write(',');
        end;
        writeln;
    end;
    for ass:=1 to N do
     writeln(s[ass]);
end.
  