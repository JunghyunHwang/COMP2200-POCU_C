#ifndef VECTOR_CLASS_BY_C_H
#define VECTOR_CLASS_BY_C_H

typedef struct {
    void(*set_x)(struct vector* const this, int x);
    void(*set_y)(struct vector* const this, int y);
    int(*get_x)(const struct vector* const this);
    int(*get_y)(const struct vector* const this);
    void(*add)(struct vector* const this, const struct vector* const other);
} vector_class_base;

typedef struct vector {
    vector_class_base* class;
    struct vector* this;
    int m_x;
    int m_y;
} vector_t;

static vector_class_base s_base;

void init_vector_class();
vector_t make_vector_at_stack(struct vecotr* this, const int x, const int y);
vector_t* new_vector_at_heap(const int x, const int y);

void set_x(struct vecotr* const this, const int x);
void set_y(struct vecotr* const this, const int y);
int get_x(const struct vecotr* const this);
int get_y(const struct vecotr* const this);
void add(struct vecotr* const this, const struct vecotr* const other);

#endif /* VECTOR_CLASS_BY_C_H */
