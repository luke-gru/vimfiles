#Setup:

> 
> cd ~ 
> 
> git clone git@github.com:luke-gru/sickvim.git .vim
> 
> git submodule update --init 
init the submodules and have them reference their latest commit
that the super is keeping track of.

Done!

#Pulling changes

make sure your HEAD's not detached when pulling:
> git checkout (-b) [branch]
> 
> git pull 
> git add or commit -am "..."
> git push 
to publish the new reference upstream

> cd superproject
> git add "." or "subproj dir."
> git commit
and push also, perhaps

Done!
