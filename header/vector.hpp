

#ifndef VECTOR_HPP
#define VECTOR_HPP

#include <memory>

namespace ft {

template <class T,  class Alloc = std::allocator<T>>
class vector {
private:
	T *array;

public:
// Member types
	using value_type = T;
    using allocator_type = Alloc;
    using reference = value_type&;
    using const_reference = const value_type&;
    using pointer = typename std::allocator_traits<Alloc>::pointer;
    using const_pointer = typename std::allocator_traits<Alloc>::const_pointer;
    // using iterator = /* implementation-defined */;
    // using const_iterator = /* implementation-defined */;
    // using reverse_iterator =  /* implementation-defined *;
    using difference_type = std::ptrdiff_t;
    using const_reverse_iterator = std::reverse_iterator<const_iterator>;
    using size_type = std::size_t;

    // constructors
    explicit vector (const allocator_type& alloc = allocator_type());
    explicit vector (size_type n, const value_type& val = value_type(),
        const allocator_type& alloc = allocator_type());
    template <class InputIt>
    vector (InputIt first, InputIt last,
        const allocator_type& alloc = allocator_type());
    // copy constructor
    vector (const vector& x);
    ~vector();

    vector& operator=(const vector& x);

};



}
#endif

