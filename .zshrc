export PATH="/Users/devsimsek/.rbenv/shims:/opt/homebrew/opt/dotnet@6/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/dotnet:~/.dotnet/tools:/Library/Apple/usr/bin:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin"
export PATH="/Users/devsimsek/Library/Application Support/JetBrains/Toolbox/scripts:$PATH"
export GOPATH=~/go
export PATH="$PATH:$GOPATH/bin"
export APACHECONF=/opt/homebrew/etc/httpd
export PYENV_ROOT="$HOME/.pyenv"
# export PATH="~/.composer/vendor/bin:$PATH"
# export PATH="$HOME/.cargo/bin:$PATH" # remove this line if you want to use cargo pm
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
function dnskill() { sudo killall -HUP mDNSResponder }
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # Load nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # add this to enable bash completion
eval "$(pyenv init -)"
eval "$(starship init zsh)"
