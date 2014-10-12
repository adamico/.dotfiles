fpath=('/usr/local/share/zsh/site-functions' $fpath)
export PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi
