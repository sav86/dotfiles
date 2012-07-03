if [ -s /usr/local/etc/bash_completion.d ]; then
  for f in /usr/local/etc/bash_completion.d/*.bash; do source $f; done
fi

complete -o default -o nospace -F _git g

. ~/dotfiles/shell/functions
. ~/dotfiles/shell/aliases
. ~/dotfiles/bash/colors
. ~/dotfiles/bash/env

# bundle exec
[ -f ~/dotfiles/bash/bundler-exec.sh ] && source ~/dotfiles/bash/bundler-exec.sh
