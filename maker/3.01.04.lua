-- -*- lua -*-
-- 
-- Binary in an ubuntu container
--

whatis([[Name : Maker]])
whatis([[Version : 3.01.04]])
whatis([[Target : x86_64]])
whatis([[Short description : Maker.]])

help([[ Maker: https://www.yandell-lab.org/software/maker.html]])

-- Set variables to notify the provider of the new services

setenv("MAKER_ROOT", "/lfs/software/misc/maker/3.01.04")
prepend_path("PATH", "/lfs/software/misc/maker/3.01.04/bin")
