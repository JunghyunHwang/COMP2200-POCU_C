#ifndef VARIADIC_H
#define VARIADIC_H

#if defined _WIN32
#define MOVE_POINTER(p, size) (p) += sizeof(size)
#endif

#if defined __APPLE__
#define MOVE_POINTER(p, size) (p) -= sizeof(size)
#endif

int sum_by_parameter_pointer(int a, int b);

int add_sum(int count, ...);

#endif /* VARIADIC_H */
