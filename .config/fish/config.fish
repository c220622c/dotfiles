if status is-interactive
    # Commands to run in interactive sessions can go here
end
# vim setup
set -gx EDITOR nvim
# path setup    
set -a -gx fish_user_paths $HOME/.local/bin
set -a -gx fish_user_paths $HOME/.cargo/bin
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx MPD_HOST $HOME/.config/mpd/socket
set -gx LEDGER_FILE $HOME/Documents/finance/wzj.journal
# starship
starship init fish | source
# change Greeting
function fish_greeting
    echo Now is (set_color yellow)(date +%T)
end
# eza setup
function lll -d 'use eza to show more'
    eza --long --tree --level=2 --icons=always --all
end
function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    command yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end
