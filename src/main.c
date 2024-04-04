/*
** EPITECH PROJECT, 2024
** main.c
** File description:
** main.c
*/

#include "my.h"
#include "my.h"
#include <stdio.h>

int main(int argc, char **argv)
{
    for (int i = 0; i < argc; i++)
        if (is_a(argv[i]))
            printf("%s is an 'a'\n", argv[i]);
    return 0;
}
