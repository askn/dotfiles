for file in ~/.{bash_aliases,bash_prompt,bash_export}; do
	[ -r "$file" ] && source "$file"
done
unset file
