#!/bin/python

import os

homeDir = "/home/acs/"
dotDir  = homeDir + "dotfiles/"

dotfiles = { ".kshrc" : homeDir, ".profile" : homeDir, ".xinitrc" : homeDir }

# Check for exist dotDir
if not( os.path.isdir( dotDir )):
    print( 'dotfile directory does not exist!' )
    quit()


print( "Checking symbolic links for..." )    

# Iter through dotfiles...
for file, dir in dotfiles.items():

    src = homeDir + "dotfiles/" + file
    dst = dir + file
    
    # Double check dotfile in dotfiles dir
    if os.path.isfile( src ):

        print( f'  {src}' )

        # Make symbolic link, if needed
        if not( os.path.islink( dst )):
            os.symlink( src, dst );
            
    
        



