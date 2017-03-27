for file in ~/.{bash_aliases,bash_prompt,bash_export}; do
	[ -r "$file" ] && source "$file"
done
unset file

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

. ~/.nvm/nvm.sh  # This loads nvm
source "$HOME/_/dotfiles/completion/git-completion.bash"
export PATH="$HOME/.crenv/bin:$PATH"
eval "$(crenv init -)"
