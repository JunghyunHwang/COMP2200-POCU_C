#ifndef VARIADIC_H
#define VARIADIC_H

#define MOVE_POINTER_FOR_WIN(p, size) (p) += sizeof(size)

#define MOVE_POINTER_FOR_MAC(p, size) (p) -= sizeof(size)

int sum_by_parameter_pointer(int a, int b);

int add_sum(int count, ...);

#endif /* VARIADIC_H */
