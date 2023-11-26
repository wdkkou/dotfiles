if status is-interactive
    # Commands to run in interactive sessions can go here
end

#view
set -g theme_display_date yes
set -g theme_date_format "+%F %H:%M"
set -g theme_display_git_default_branch yes
set -g theme_color_scheme dark

#path
set -x PATH /opt/homebrew/bin $PATH
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

#peco setting
set fish_plugins theme peco

# fzf setting
set -U FZF_REVERSE_ISEARCH_OPTS "--reverse --height=100% --border"
set -U FZF_ALT_C_OPTS "--preview 'tree -C {} | head -200'"

set -U FZF_DEFAULT_OPTS '--height 100% --border --reverse'

function fish_user_key_bindings
    bind \cf peco_select_history
    bind \ct fzfp
end

function fzfp
    fzf --height 100% --reverse --border --preview 'bat  --color=always --style=header,grid --line-range :100 {}' | xargs -o code
end

function fzft
    ls | fzf --reverse --preview 'tree -C {}'
end

function fzf-checkout-branch
    set -l branchname (
        env FZF_DEFAULT_COMMAND='git --no-pager branch -a | grep -v HEAD | sed -e "s/^.* //g"' \
            fzf --height 70% --reverse --prompt "BRANCH NAME>" \
                --preview "git --no-pager log -20 --color=always {}"
    )
    if test -n "$branchname"
        git checkout (echo "$branchname"| sed "s#remotes/[^/]*/##")
    end
end

function fzf-switch-branch
    set -l branchname (
        env FZF_DEFAULT_COMMAND='git --no-pager branch -a | grep -v HEAD | sed -e "s/^.* //g"' \
            fzf --height 70% --reverse --prompt "BRANCH NAME>" \
                --preview "git lg --color=always {}"
    )
    if test -n "$branchname"
        git checkout (echo "$branchname"| sed "s#remotes/[^/]*/##")
    end
end

# alias
alias ls='ls --color=auto'
alias ls='ls -G'
alias ll='ls -alF'
alias ll='ls -lh'
alias la='ls -a'
alias l='ls -CF'
alias vim='nvim'


# 設定反映
direnv hook fish | source
source /opt/homebrew/opt/asdf/libexec/asdf.fish

source "$(brew --prefix)/share/google-cloud-sdk/path.fish.inc"
eval (direnv hook fish)
