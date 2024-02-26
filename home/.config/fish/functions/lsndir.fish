function lsndir --description 'List non-directories'
    ls | grep -ve "^drw"
end
