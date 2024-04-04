/*
** EPITECH PROJECT, 2023
** test_func.c
** File description:
** test_func.c
*/

#include <criterion/criterion.h>

#include "my.h"

Test(is_a, works)
{
    cr_assert_eq(is_a("a"), true);
    cr_assert_eq(is_a("b"), false);
}
