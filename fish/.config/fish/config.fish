if status is-interactive
    fish_vi_key_bindings

    alias sofish "source ~/.config/fish/config.fish"
    alias gitroot "cd $(git rev-parse --show-toplevel)"

    set -x EDITOR nvim

    alias sofish "source ~/.config/fish/config.fish"

    abbr gst "git status"
    abbr gsw "git switch"
    abbr gd "git diff"
    abbr ga "git add"
    abbr gc "git commit -v"
    abbr gac "git commit -av"
    abbr gp "git push"
    abbr gf "git fetch --prune --all"
    abbr gl "git pull"
    abbr gco "git checkout"

    addr v "nvim"
    addr vi "nvim"
    addr vim "nvim"

    addr tf "terraform"
    addr k "kubectl"
    addr ktx "kubectx"
    addr kns "kubens"
    addr clr "clear"

    if type -q starship 
        starship init fish | source
    end
    if type -q zoxide
        zoxide init fish | source
    end
    if type -q lsd
        alias ls "lsd"
        alias ll "lsd -l"
        alias lla "lsd -la"
    end
    if type -q direnv
        direnv hook fish | source
    end
end