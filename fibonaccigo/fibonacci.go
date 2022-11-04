package main

import "C"

//export fibonacci
func fibonacci(n C.uint) C.uint {
	if n <= 1 {
		return n
	}
	return fibonacci(n-1) + fibonacci(n-2)
}

//export fibonacciSequential
func fibonacciSequential(n C.uint) C.uint {
	if n <= 1 {
		return C.uint(n)
	}

	var n2, n1 C.uint = 0, 1

	for i := C.uint(2); i < n; i++ {
		n2, n1 = n1, n1+n2
	}

	return n2 + n1
}

func main() {}
