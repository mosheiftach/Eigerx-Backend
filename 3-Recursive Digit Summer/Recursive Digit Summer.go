package main

import "fmt"

func sumOfDigits(n int) int {
    if n == 0 {
        return 0
    }
    return (n % 10) + sumOfDigits(n / 10)
}

func main() {
    input := 2347623
    output := sumOfDigits(input)
    fmt.Println(output)
}