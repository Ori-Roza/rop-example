#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>


char g_buffer[1000];

void a1()
{
    __asm__("pop eax;"
            "ret;"
            "pop ecx;"
            "ret;"
            "mov [eax], ecx;"
            "ret;"
            );
    
}

int vuln(char* argv) {
	char buffer[256];
	strcpy(buffer, argv);
}

int main(int argc, char** argv) {
    vuln(argv[1]);
	return 0;
}
