for prefix in /usr /usr/local /opt/local
  if test -f $prefix/share/fish/completions/git.fish
    source $prefix/share/fish/completions/git.fish
    break
  end
end

if not type -q __fish_git_branches
  echo "Error: git completion not found!" >&2
end
