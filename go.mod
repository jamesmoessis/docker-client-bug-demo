module docker-client-bug-demo

go 1.18

require github.com/docker/docker v20.10.17+incompatible

require (
	github.com/Microsoft/go-winio v0.5.2 // indirect
	github.com/docker/distribution v2.8.1+incompatible // indirect
	github.com/docker/go-connections v0.4.0 // indirect
	github.com/docker/go-units v0.4.0 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/moby/term v0.0.0-20210619224110-3f7ff695adc6 // indirect
	github.com/morikuni/aec v1.0.0 // indirect
	github.com/opencontainers/go-digest v1.0.0 // indirect
	github.com/opencontainers/image-spec v1.0.2 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/sirupsen/logrus v1.8.1 // indirect
	golang.org/x/sys v0.0.0-20210616094352-59db8d763f22 // indirect
	golang.org/x/time v0.0.0-20220609170525-579cf78fd858 // indirect
	gotest.tools/v3 v3.3.0 // indirect
)

// comment this out (+ go mod tidy) and the ping in main.go works. This is the switch for the bug on and off.
replace github.com/docker/go-connections v0.4.0 => github.com/docker/go-connections v0.4.1-0.20210727194412-58542c764a11
