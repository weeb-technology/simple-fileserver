package main

import (
	"log"
	"net/http"
)

func main() {
	log.Print("Starting file server...")

	err := http.ListenAndServe(":80", http.FileServer(http.Dir("/srv")))

	if err != nil {
		log.Fatal(err)
	}
}
