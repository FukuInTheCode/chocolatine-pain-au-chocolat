/*
** EPITECH PROJECT, 2024
** is_a.c
** File description:
** is_a.c
*/

#include "my.h"

#include <stdbool.h>

bool is_a(char const *str)
{
    if (*str == 'a')
        return true;
    return false;
}
