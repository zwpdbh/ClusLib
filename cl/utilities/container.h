//
// Created by zwpdbh on 25/02/2018.
//

#ifndef DATA_CLUSTERING_CONTAINER_H
#define DATA_CLUSTERING_CONTAINER_H


#include "cl/types.h"
#include "cl/errors.hpp"

#include <vector>

namespace ClusLib {
    template <typename T>
    class Container {
    protected:
        ~Container() {}
        std::vector<T> _data;
    public:
        typedef typename std::vector<T>::iterator iterator;
        typedef typename std::vector<T>::const_iterator const_iterator;
        
        iterator begin();
        const_iterator begin() const;
        iterator end();
        const_iterator end() const;
        
        Size size() const;
        
        bool empty() const;
        
        void clear();
        
        const std::vector<T>& data() const;
        std::vector<T>& data();
        const T& operator[](Size i) const;
        T& operator[](Size i);
        void erase(const T& val);
        void add(const T&val);
    };
    
    template <typename T>
    inline typename Container<T>::iterator Container<T>:: begin() {
        return _data.begin();
    }
    
    template <typename T>
    inline typename Container<T>::const_iterator Container<T>::begin() const {
        return _data.begin();
    }
    
    template <typename T>
    inline typename Container<T>::iterator Container<T>::end() {
        return _data.end();
    }
    
    
    template <typename T>
    inline typename Container<T>::const_iterator Container<T>::end() const {
        return _data.end();
    }
    
    template<typename T>
    inline Size Container<T>::size() const {
        return _data.size();
    }
    
    template <typename T>
    inline bool Container<T>::empty() const {
        return _data.size() == 0;
    }
    
    template <typename T>
    inline void Container<T>::clear() {
        _data.clear();
    }
    
    template <typename T>
    inline const std::vector<T>& Container<T>::data() const {
        return _data;
    }
    
    template <typename T>
    inline std::vector<T>& Container<T>::data() {
        return _data;
    }
    
    template <typename T>
    inline const T&  Container<T>::operator[](Size i) const {
        ASSERT((i >=0) && (i < _data.size()), "index out of range");
        return _data[i];
    }
    
    template <typename T>
    inline T&  Container<T>::operator[](Size i) {
        ASSERT((i>=0) && (i < _data.size()), "index out of range");
        return _data[i];
    }
    
    template <typename T>
    inline void Container<T>::erase(const T &val) {
        for (iterator it = _data.begin(); it != _data.end(); it++) {
            if (val == *it) {
                _data.erase(it);
                break;
            }
        }
    }
    
    template <typename T>
    inline void Container<T>::add(const T &val) {
        _data.push_back(val);
    }
}


#endif //DATA_CLUSTERING_CONTAINER_H
