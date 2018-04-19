for file in ~/.{bash_aliases,bash_prompt,bash_export}; do
	[ -r "$file" ] && source "$file"
done
unset file

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

. ~/_/dotfiles/completion/hub.bash_completion.sh
. ~/_/dotfiles/completion/git-completion.bash

export PATH="$HOME/.crenv/bin:$PATH"
eval "$(crenv init -)"

source "$HOME/.config/nvim/plugged/gruvbox/gruvbox_256palette.sh"

source "$HOME/_/google-cloud-sdk/completion.bash.inc"
source "$HOME/_/google-cloud-sdk/path.bash.inc"
