clear
clc
file=fopen('Group1PGV.txt', 'w');
count =0; %counts the number of collision resistant functions
N = 3;
M = 4;
v = ones(1,N*M);
a=[0,0,0,1];
e1=[1,0,0,0];
e2=[0,1,0,0];
e3=[0,0,1,0];
m1=e3;
A = reshape(v,[N,M]);
for i=1:2^(N*M)-1 %iterates over all possible 3*4 binary Matrices
    k = find(v,1);
    v(1:k) = 1-v(1:k);
    A = reshape(v,[N,M]);
    m2 = A(3,:); %program output
    qk = A(1,:); %first component of the query (key)
    qx = A(2,:); %second component of the query (input)

    if and(or(qk(M-1)==0 ,and(qk(1)==0, qk(2)==0)),or(qx(M-1)==0 , and(qx(1)==0, qx(2)==0)),or(m2(M-1)==0,and(m2(1)==0, m2(2)==0))) %E_a(b)+c where a,b,c \in {x,y,x+y,v}
        if and(qk(M)==0,qx(M)==0) %no loops in the query
            if m2(M)~=0 %no useless query
                if and(rank([A;a;m1])==rank([A;a;m1;e1]),rank([A;a;m1])==rank([A;a;m1;e2])) %nondegenerate
                    if   or(and( rank([m1;m2])==rank([m1;m2;qk]) , rank([m1;m2;qk;a])==rank([m1;a;A])) , and( rank([m1;m2])==rank([m1;m2;qk]) ,  rank([m1;A])==rank([m1;A;a])) ,  and( rank([m1;A])==rank([m1;A;a]) , rank([m1;m2;qk;a])==rank([m1;A;a])))%no collision structure
                         A
                         count=count+1;
                         fprintf(file,'\nA%i= \n',count)
                         fprintf(file,'%4i %i %i %i \n',A')

                    endif
                endif

            endif

        endif
   endif
end
fclose(file);

