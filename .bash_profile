################################################################################
# Path modifications
################################################################################

PATH="$HOME/bin:$PATH"
export PATH

################################################################################
# Load partials
################################################################################

for file in ~/.{extra,bash_prompt,bash_sensible,exports,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file

################################################################################
# Other apps
################################################################################

# chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

################################################################################
# Autocompletion
################################################################################

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

# homebrew completion
if  which brew > /dev/null; then
  source "$(brew --prefix)/etc/bash_completion.d/brew"
fi;

# hub completion
if  which hub > /dev/null; then
  source "$(brew --prefix)/etc/bash_completion.d/hub.bash_completion.sh";
fi;

# Enable tab completion for `g` by marking it as an alias for `git`
if type __git_complete &> /dev/null; then
    __git_complete g __git_main
fi;
