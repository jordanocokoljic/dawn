# godl
godl is a script that generates scripts that install a version of the Go
programming language on systems that have a POSIX compatible shell.


## Using a generated script
The scripts follow the instructions outlined by the Go team in their install
guide. 

1. Remove any existing Go installation in `/usr/local/go`.
2. Download the required binary archive from [go.dev/dl](http://go.dev/dl)
3. Unpack the archive into `/usr/local/go`

Scripts should be run as root, because they write to `/usr/local/go`.


## Generating new scripts
In case a script for the specific version and architecture of Go you want to
install hasn't been generated and committed, you can clone the repository and
run `version.sh` to generate the script you need.

```shell
$ ./version.sh <version> <architcture>
```

For example, to generate a script to install Go `1.24.3` for `linux-amd64` the
invocation would look like so.

```shell
$ ./version.sh 1.24.3 linux-amd64
```

Which would generate the script `go1.24.3.linux-amd64.sh` in the `install`
folder, and use `chmod` to mark it as executable.