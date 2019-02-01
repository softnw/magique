program carre ;
uses crt ;

const cmax=5;

var nb1,i,j,mid,nb2,nb3:INTEGER;


magic:ARRAY[1..cmax,1..cmax] OF INTEGER;

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



END.






{ALGORITHME carremagique
//BUT faire un beau carré
//ENTREE taille du tableau
//SORTIE tableau completer

CONST
cmax <-- 7

var nb1,i,j,mid,nb2,nb3:ENTIER;
magic:tableau[1..cmax,1..cmax]

DEBUT

	POUR i<--1 DE cmax FAIRE
                POUR j<--1 DE cmax FAIRE

                        magic[i,j]<--0;

                FINPOUR

	FINPOUR
	mid<-- (cmax div 2)+1
	i <-- (mid-1)
	j <-- (mid)
	nb1<--(1)
	nb2<--(cmax*cmax)
	magic[i,j]<--nb1
	nb1<--nb1+1


TANTQUE (nb1 <= nb2) FAIRE
                i <-- (i-1);
                j <-- (j+1);
                        SI (i<1) ALORS

                        i<-- cmax;
                       	FINSI
                         SI (j>cmax) ALORS

                         j<--1;
                        	FINSI
                         SI (j<1) ALORS

                        j<-- cmax;
                       	FINSI
        				SI (magic[i,j]=0) ALORS
        				
        				magic[i,j]<--nb1;
        				nb1<--nb1+1;       				
        				SINON
        				
        				nb3 <-- nb1;
        				FINSI
        				TANTQUE nb3 = nb1 FAIRE
        				
        				i<--(i-1);
        				j<--(j-1);
        					SI (i=0) ALORS
                       	 	
                        	i<-- cmax;
                        	FINSI
                         	SI (j=0) THEN
                         	
                         	j<--cmax;
                        	FINSI
        					SI magic[i,j]=0 ALORS
        					
        					magic[i,j]<--nb1;
        					nb1 <-- nb1+1;
        					FINSI
        				FINTANTQUE


        			
FINTANTQUE


 POUR i<--1 A cmax FAIRE

                POUR j<--1 A cmax FAIRE

                       ECRIRE('|')
                        ECRIRE (magic[i,j])
                FINPOUR
                ECRIRE('|')
        FINPOUR


ECRIRE(magic[i,j])



FIN




















}

