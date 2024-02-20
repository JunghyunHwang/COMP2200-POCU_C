#include "vector_class_by_C.h"

#include <stdlib.h>

void init_vector_class()
{
    s_base.set_x = set_x;
    s_base.set_y = set_y;
    s_base.get_x = get_x;
    s_base.get_y = get_y;
    s_base.add = add;
}

vector_t make_vector_at_stack(struct vecotr* this, const int x, const int y)
{
    this->class = &s_base;
    this->this = this;

    this->m_x = x;
    this->m_y = y;

    return *this;
}

vector_t* new_vector_at_heap(const int x, const int y)
{
    vector_t* new_vector = (vector_t*)malloc(sizeof(vector_t));

    new_vector->class = &s_base;
    new_vector->this = new_vector;

    new_vector->m_x = x;
    new_vector->m_y = y;

    return new_vector;
}

void set_x(struct vecotr* const this, const int x)
{
    this->m_x = x;
}

void set_y(struct vecotr* const this, const int y)
{
    this->m_y = y;
}

int get_x(const struct vecotr* const this)
{
    return this->m_x;
}

int get_y(const struct vecotr* const this)
{
    return this->m_y;
}

void add(struct vecotr* const this, const struct vecotr* const other)
{
    this->m_x += other->m_x;
    this->m_y += other->m_y;
}
