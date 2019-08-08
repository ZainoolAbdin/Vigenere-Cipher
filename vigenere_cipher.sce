clc
clear

str=input("Enter the plaintext = ")     //Input from user as Plain Text
key=input("Enter the key = ")          //Input from user as Key

a=ascii(str);                //Converting plain text into ascii value
b=ascii(key);               //Converting key into ascii value

c=length(str);              //length of plain text
d=length(key);             //length of key

q=fix(c/d);              //return integer matrix rounded towards zero
r=modulo(c,d);          //return remainder value

for i=1:q         //for loop
    k(1,i*d-(d-1):i*d)=b;
end

k(1,q*d+1:q*d+r)=b(1,1:r);

a1=a-32;             
k1=k-32;

e1=modulo(a1+k1,94);       //Encryption formula
e2=e1+32;
c2=char(e2);
printf("The Cipher Text is %s\n",c2);      //Print Cipher Text

p1=32+pmodulo(e1-k1,94);             //Decryption formula
p2=char(p1);
printf("The Recovered Plain Text is %s\n",p2);       //Print Recovered Plain Text


