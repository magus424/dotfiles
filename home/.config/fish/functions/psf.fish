function psf --wraps='ps auwx | fzf --header-lines 1' --description 'alias psf=ps auwx | fzf --header-lines 1'
  ps auwx | fzf --header-lines 1 $argv
        
end
