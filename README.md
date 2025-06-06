# dawn
dawn is a script that generates scripts that install various programs from
prebuilt binary distributions.


## Using a generated script
The scripts follow - where provided - the installation instructions provided
by the developers of the individual programs.

Scripts should be run as root, because they write to `/usr/local/*`.


## Generating scripts
The templates for the generated scripts are stored in `src` as `.txt` files.
Templates can be individually generated by running `generate.sh` with the
specific toolchain, version, and architecture necessary.

```shell
$ ./generate.sh <toolchain> <version> <architcture>
```

For example, to generate a script to install Go `1.24.3` for `linux-amd64` the
invocation would look like so.

```shell
$ ./version.sh 1.24.3 linux-amd64
```

Which would generate the script `go1.24.3.linux-amd64.sh` in the `install`
folder, and use `chmod` to mark it as executable.


## Writing templates
When writing templates, the following tokens can be used to represent values
that should be replaced with appropriate substitutions.

| Token      | Purpose                                                        |
|------------|----------------------------------------------------------------|
| `@tmp`     | An appropriate temporary directory to use when unpacking files |
| `@version` | The version argument provided to `generate.sh`                 |
| `@arch`    | The architecture argument provided to `generate.sh`            |

Examples of the uses of these tokens can be found in the existing templates.


## Standard Generations
This repository comes with a collection of ready-to-use scripts, to ensure that
these are kept up to date, generation triplets can be recorded in `generate.txt`
which is used by `dawn.sh` to call `generate.sh` with the appropriate arguments.