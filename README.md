### docker-rpi-alpine-git

A useful simple git container running in alpine Linux, especially for tiny Linux distro, such as RancherOS, which doesn't have a package manager.

[![DockerHub Badge](http://dockeri.co/image/kacis/docker-rpi-alpine-git)](https://hub.docker.com/r/kacis/docker-rpi-alpine-git/)
## Docker image
[![](https://images.microbadger.com/badges/image/kacis/docker-rpi-alpine-git.svg)](https://microbadger.com/images/kacis/docker-rpi-alpine-git "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/kacis/docker-rpi-alpine-git.svg)](https://microbadger.com/images/kacis/docker-rpi-alpine-git "Get your own version badge on microbadger.com")

### usage

    docker run -ti --rm -v ${HOME}:/root -v $(pwd):/git kacis/docker-rpi-alpine-git <git_command>

For example, if you need clone this repository, you can run

    docker run -ti --rm -v ${HOME}:/root -v $(pwd):/git kacis/docker-rpi-alpine-git clone https://github.com/kacis/docker-rpi-alpine-git.git
    
### Optional usage 1:

To save your type, add this fuction to `~/.bashrc` or `~/.profile`
    
    $ cat ~/.profile
    
    ...
    
    function git () {
        (docker run -ti --rm -v ${HOME}:/root -v $(pwd):/git kacis/docker-rpi-alpine-git "$@")
    }
    
    ...
    
    $ source ~/.profile

for example, if you need clone this repository, with the function you just set, you can run it as local command

    git clone https://github.com/kacis/docker-rpi-alpine-git.git

### Optional usage 2:

    alias git="docker run -ti --rm -v $(pwd):/git -v $HOME/.ssh:/root/.ssh kacis/docker-rpi-alpine-git"
    
#### NOTES:

- You need redefine (re-run) the alias, when you switch between different repositories
- You need run above alias command only under git repository's root directory.

## Demo

    $ cd application
    $ alias git="docker run -ti --rm -v $(pwd):/git -v $HOME/.ssh:/root/.ssh kacis/docker-rpi-alpine-git"
    $ git clone git@github.com:YOUR_ACCOUNT/YOUR_REPO.git
    $ cd YOUR_REPO
    $ alias git="docker run -ti --rm -v $(pwd):/git -v $HOME/.ssh:/root/.ssh kacis/docker-rpi-alpine-git"
    # edit several files
    $ git add . 
    $ git status
    $ git commit -m "test"
    $ git push -u origin master
    
### The Protocols

Supports git, http/https and ssh protocols.

Refer:
[Git on the Server - The Protocols](https://git-scm.com/book/en/v2/Git-on-the-Server-The-Protocols)
