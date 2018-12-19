%The program for the problem 1:
M=input('please enter the number of repetitions: ');
for j=1:M      %repeat this experiment for M times
    i=0;
    p=0;
    while (p<=1)  %find N for this trial
        i=i+1;
        a(1,i)=rand;
        p=p+a(1,i);
    end
    b(1,j)=i;
end
u=mean(b(1,1:M));  %calculate the sample mean of N

%the program for the problem 2:
M=input('please enter the number of repetitions: ');
for j=1:M            %repeat this experiment for M times
    i=1;
    a(1,i)=rand;     %generate the first two random numbers of the sequence 
    a(1,i+1)=rand;
    while (a(1,i)<=a(1,i+1))  %find N for this trial, which is the index value of term in the sequence that is first less than its predecessor
        i=i+1;
        a(1,i+1)=rand;
    end
    b(1,j)=i+1;
end
u=mean(b(1,1:M));  %calculate the sample mean of N

%the program for the problem 3:
M=input('please enter the number of repetitions: ');
for j=1:M       %repeat this experiment for M times
    b(1,1)=1;
    i=1;
    a(1,i)=rand;     %generate the first two random numbers of the sequence 
    a(1,i+1)=rand;
        while (a(1,i+1)<=max(a(1,1:i)))  %find the second record of sequence for this trial
          i=i+1;
          a(1,i+1)=rand;
        end
        b(1,2)=i+1;
        i=i+1;
        a(1,i+1)=rand;
        while (a(1,i+1)<=max(a(1,1:i)))  %find the third record of sequence for this trial
          i=i+1;
          a(1,i+1)=rand;
        end
        b(1,3)=i+1;
        c(1,j)=b(1,2)-b(1,1);    %calculate the X2 for this trial
        d(1,j)=b(1,3)-b(1,2);    %calculate the X3 for this trial
end
figure         %plot the probability histogram for X2 and X3
tbl1=tabulate(c(:));
X1=tbl1(1:100,1);
P1=tbl1(1:100,3)/100;
bar(X1,P1);
grid on
ylabel('Probability')
xlabel('X2')
title('Probability Histogram for X2')
figure 
tbl2=tabulate(d(:));
X2=tbl2(1:100,1);
P2=tbl2(1:100,3)/100;
bar(X2,P2);
grid on
ylabel('Probability')
xlabel('X3')
title('Probability Histogram for X3')
u1=mean(c);    %calculate the sample mean of X2 and X3
u2=mean(d);



        


