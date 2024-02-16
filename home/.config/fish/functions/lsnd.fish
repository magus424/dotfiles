function lsnd --description 'List non-directories'
    ls | grep -ve "^drw"
end
