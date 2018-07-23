for file in ~/.{bash_aliases,bash_prompt,bash_export}; do
	[ -r "$file" ] && source "$file"
done
unset file

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

. ~/_/dotfiles/completion/hub.bash_completion.sh
. ~/_/dotfiles/completion/git-completion.bash
. ~/_/dotfiles/completion/helm.sh

export PATH="$HOME/.crenv/bin:$PATH"
eval "$(crenv init -)"

source "$HOME/.config/nvim/plugged/gruvbox/gruvbox_256palette.sh"

source "$HOME/_/google-cloud-sdk/completion.bash.inc"
source "$HOME/_/google-cloud-sdk/path.bash.inc"

sofra_console () {
    kubectl config use-context protel-$1
    pod=$( kubectl get pods -l "app=$1-sofra-backend" -n $1 -o jsonpath="{.items[0].metadata.name}" --sort-by=.metadata.creationTimestamp )
    kubectl exec -it $pod -n $1 -- /bin/bash
}

tezgah_console () {
    kubectl config use-context protel-$1
    pod=$( kubectl get pods -l "app=$1-tezgah-backend" -n $1 -o jsonpath="{.items[0].metadata.name}" )
    kubectl exec -it $pod -n $1 -- rails console
}

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
