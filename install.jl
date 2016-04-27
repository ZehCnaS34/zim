#!/usr/bin/env julia
# TODO: This install script thooo

dotvim() = homedir() |> (hd) -> joinpath(hd, ".vim") 

hasdotvim = string(dotvim()) |> isdir 

if hasdotvim
  println("Add extension to $dotvim()")
  outputlocation = dotvim() * ".backup"
  println("Backing up Old Vim to $(dotvim() * ".backup")")
  cp(dotvim(), outputlocation)
  rm(dotvim(); recursive = true)
end

# must make better
pull_command = `git clone https://github.com/ZehCnaS34/zim.git $(joinpath(homedir(), ".vim"))`
run(pull_command)


vundle_command = `git clone https://github.com/VundleVim/Vundle.vim.git $(joinpath(homedir(), ".vim/bundle/Vundle.vim"))`
run(vundle_command)


link_command = `ln -s $(joinpath(homedir(), ".vim/init.vim")) $(joinpath(homedir(), ".vimrc"))`
run(link_command)

vim_command = `vim -c "BundleInstall"`
run(vim_command)
