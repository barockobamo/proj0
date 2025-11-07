//https://www.jsums.edu/nmeghanathan/files/2015/05/CSC437-Fall2013-Module-5-Buffer-Overflow-Attacks.pdf

#include <stdio.h>

void cannotExecute()
{
    printf("This function cannot execute\n");
}

void getInput()
{
    char buffer[8];
    gets(buffer);
    puts(buffer);
}

int main()
{
    getInput();
    return 0;
}