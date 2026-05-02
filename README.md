# rawr
Simple package manager and local P2P file sharing service

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

# Usage
`rawr receive [port]`: host an upload server for receiving packages

`rawr serve [port] [directory]`: host a download server for downloading packages 


`rawr give [package_path] [ip:port]`: give a package to an open upload server

`rawr get [package_path] [ip:port]`: get a package from an open download server


`rawr pack [directory]`: create a rawr package

`rawr unpack [package]`: unpack a rawr package


`rawr help/--help/(nothing)`: Display this message
