#!/bin/sh

greet() {
    echo "Hello $1, how is $2"
}

# greet "Chinedu", "Ola"

add () {
    echo $(($1 + $2))
}

result=$(add 5 3)

echo "Sum of 5, 3 is: $result"