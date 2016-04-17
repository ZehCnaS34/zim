# TODO: This install script thooo

dotvim() = homedir() |> (hd) -> joinpath(hd, ".vim") 

hasdotvim = dotvim() |> isdir 

if hasdotvim
  #=// copy file=#
  println("Add extension to $dotvim()")
  exts = read(STDIN, Char)
  outputlocation = join(dotvim(), exts, ".") 
  println(outputlocation)
  #=cp(dotvim(), )=#
end

