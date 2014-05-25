for file in ~/.{bash_aliases,bash_prompt}; do
	[ -r "$file" ] && source "$file"
done
unset file
