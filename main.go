package main

import (
	"context"
	"fmt"
	"net/http"
	"net/http/httptest"

	dclient "github.com/docker/docker/client"
)

func main() {
	mockServer := httptest.NewServer(http.HandlerFunc(func(rw http.ResponseWriter, req *http.Request) {
		fmt.Println("ok") // we are looking for this to see if the server was called
		rw.WriteHeader(http.StatusOK)
	}))

	client, err := dclient.NewClientWithOpts(dclient.WithHost(mockServer.URL))
	if err != nil {
		fmt.Println("error")
	}
	defer client.Close()

	_, err = client.Ping(context.Background())
	if err != nil {
		fmt.Println("error2")
	}
}
