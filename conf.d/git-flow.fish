for prefix in $fish_complete_path
  if not string match -e git-flow $prefix >/dev/null
    and test -f $prefix/git.fish
    source $prefix/git.fish
    break
  end
end

if not type -q __fish_git_branches
  echo "Error: git completion not found!" >&2
end
