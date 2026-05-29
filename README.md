# rawr
Simple package manager with local P2P file sharing service

# Note:
This project isn't finished. I do not expect anyone to use this and I'm really just having fun :3 
So again, this is JUST a hobby project.

Locally installing packages is still a wip, stay tuned please.
Right now rawr is and will always be able to just function as a simple local P2P file sharing service,
 this may be enough if you just need something to transfer files over LAN!

# Installation
First you need to install the dependencies (listed in dependencies.txt)
Debian: `cat dependencies.txt | sudo apt install `

now, clone the repo:
`git clone https://gitlab.com/emnoxx/rawr.git`,

then cd into the repo's scripts directory:
`cd rawr/scripts`,

and now execute the install.sh script:
`./install.sh`

follow the instructions in the script and you're set!

If you only want to run a binary, run the export.sh script (located in the scripts directory)
and find the binary in the exports directory.
I usually include the export binaries in my git commits, so there may be some, though those exports
may be too old so I recommend exporting them yourself.

# Arguments
`rawr receive [port]`: host an upload server for receiving packages

`rawr serve [port] [directory]`: host a download server for downloading packages 


`rawr give [package_path] [ip:port]`: give a package to an open upload server

`rawr get [package_path] [ip:port]`: get a package from an open download server


`rawr pack [directory]`: create a rawr package

`rawr unpack [package]`: unpack a rawr package

`rawr install [package]`: install a rawr package

`rawr list`: list installed packages

`rawr help/--help/(nothing)`: Display this message

# Creating rawr packages

## Intro
A rawr package is simple, the root of the package archive represents the root of your system.
A RAWR.ini file specifies the metadata of your package. It is also placed at the root of your
.rawr package.

## Example

You want a `test.sh` file in directory `/usr/bin/`.
You start my creating a new directory, Ideally you'd name said directory after your package,
although the name of the directory is irrelevant regarding the package name itself.
In the root of the directory, you create a `usr/bin/` directory, and place your test.sh
script into that directory. (Don't forget to chmod it incase you actaully want to execute it).

Now again at the root of your package directory, create a RAWR.ini file.
Currently the only keys to specify are `name` and `version`, all under the section `[package]`

```
[package]
name = "test.sh"
version = "6.7"

```

After this, go into the parent directory and run
`rawr pack [directory_name]`
and finally to install,
`rawr install [package_name]`

And then you'd be done ^^

NOTE: Rawr doesn't check if a package name is already being used, for now it is your responsibility to maintain your packages.
