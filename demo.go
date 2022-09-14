package main

import (
	"fmt"
	"os"
	"time"
)

func main() {
	for {
		time.Sleep(1 * time.Second)
		val, envExists := os.LookupEnv("VAR_FOR_TESTING")
		if envExists {
			fmt.Println("the VAR_FOR_TESTING value is:", val)
		} else {
			fmt.Println("the VAR_FOR_TESTING was not found")
		}
	}
}
