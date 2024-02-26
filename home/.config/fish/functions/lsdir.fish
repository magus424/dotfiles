function lsdir --description 'List directories'
    ls -l | grep -e "^drw"
end
