program carre ;
uses crt ;

const cmax=7;

var nb1,i,j,mid,nb2,nb3:INTEGER;


magic:ARRAY[1..cmax,1..cmax] OF INTEGER;


PROCEDURE initial();
var  i,j,nb1,nb2 : INTEGER;
	BEGIN
clrscr;
        FOR i:=1 TO cmax DO
        BEGIN
                FOR j:=1 TO cmax DO
                BEGIN
                        magic[i,j]:=0;
                       
                END;
                
        END;

mid:= (cmax div 2)+1;
i := (mid-1);
j := (mid);
nb1:=(1);
nb2:=(cmax*cmax);
magic[i,j]:=nb1;
nb1:=nb1+1;
END;

PROCEDURE verif();
var  i,j,nb1,nb2 : INTEGER;
BEGIN
	WHILE (nb1 <= nb2) DO
        BEGIN
        clrscr;
                i := (i-1);
                j := (j+1);
                        IF (i<1) THEN
                        BEGIN
                        i:= cmax;
                        END;
                         IF (j>cmax) THEN
                         BEGIN
                         j:=1;
                         END;
                         IF (j<1) THEN
                        BEGIN
                        j:= cmax;
                        END;
        				IF (magic[i,j]=0) THEN
        				BEGIN
        				magic[i,j]:=nb1;
        				nb1:=nb1+1;
        				
        				END
        				ELSE
        				BEGIN
        				nb3 := nb1;
        				END;
        				WHILE nb3 = nb1 DO
        				BEGIN
        				i:=(i-1);
        				j:=(j-1);
        					IF (i=0) THEN
                       	 	BEGIN
                        	i:= cmax;
                        	END;
                         	IF (j=0) THEN
                         	BEGIN
                         	j:=cmax;
                        	END;
        					IF magic[i,j]=0 THEN
        					BEGIN
        					magic[i,j]:=nb1;
        					nb1 := nb1+1;
        					END;
        				END;


        			
       	END;
END;   

PROCEDURE ecriretab ();
var i,j:INTEGER;   

BEGIN
	clrscr;
        FOR i:=1 TO cmax DO
        BEGIN
                FOR j:=1 TO cmax DO
                BEGIN
                       write('|');
                        write (magic[i,j]:3);
                END;
                writeln('|');
        END;

READLN;
END;
BEGIN

initial();

verif();

ecriretab();






END.

