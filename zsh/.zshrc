setopt nobeep # ビープを鳴らさない
setopt no_tify # バックグラウンドジョブが終了したらすぐに知らせる。

# History
HISTSIZE=10000 # メモリに保存される履歴の件数
SAVEHIST=10000 # 履歴ファイルに保存される履歴の件数
setopt hist_ignore_dups # 直前と同じコマンドをヒストリに追加しない
setopt hist_ignore_all_dups # 重複するコマンドは古い法を削除する
setopt share_history # 異なるウィンドウでコマンドヒストリを共有する
setopt hist_no_store # historyコマンドは履歴に登録しない
setopt hist_reduce_blanks # 余分な空白は詰めて記録
setopt hist_verify # `!!`を実行したときにいきなり実行せずコマンドを見せる

#bat
export BAT_THEME="TwoDark"

# Alias
alias h="cd ~"
alias e="exit"
alias c="clear"
alias o="open"
alias g='git'
alias v='nvim'
alias t='tmux'
alias tiga='tig --all'
alias gccc='gcc -fno-pic -fomit-frame-pointer'
alias l='exa -al'
alias la='exa -a'
alias ll='exa -l'
alias dc='docker-compose'
alias dcu='docker-compose up'
alias dcud='docker-compose up -d'
alias dcd='docker-compose down'
alias pj="cd ~/pj"

# PATH
export PATH="/opt/homebrew/bin:$PATH"
export PATH=$HOME/.nodebrew/current/bin:$PATH

# startship
eval "$(starship init zsh)"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# zoxide
eval "$(zoxide init zsh)"

# mcfly
eval "$(mcfly init zsh)"
if [[ "$(defaults read -g AppleInterfaceStyle 2&>/dev/null)" != "Dark" ]]; then
    export MCFLY_LIGHT=TRUE
fi
export MCFLY_RESULTS=50
