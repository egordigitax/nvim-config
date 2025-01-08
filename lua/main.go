package main

import "fmt"

func main() {
	fmt.Println(123)
	fmt.Println("babushka")
}

type Aboba struct {
    Mama string `json:"mama"`
}

func styop() {
	main()
	fb := Aboba{
		Mama: "asd",
	}

    fmt.Println(fb)
}
