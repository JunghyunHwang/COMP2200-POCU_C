#ifndef MACROS_H
#define MACROS_H

#define MAX(x, y) ((x) >= (y) ? x : y)

#define MIN(x, y) ((x) <= (y) ? x : y)

#define ABS(x) ((x) >= 0 ? x : (x) * -1)

#define RANGE(curr, min, max) for (curr = min; curr <= (max); ++curr)

#define RANGE_DESC(curr, max, min) for (curr = max; curr >= (min); --curr)

#define SET(ary, start, count, value)\
do {                                 \
    size_t i = (start);              \
    size_t max = i + (count);        \
    for (; i < max; ++i) {           \
        (ary)[i] = (value);          \
    }                                \
} while (0)

#endif /* MACROS_H */
