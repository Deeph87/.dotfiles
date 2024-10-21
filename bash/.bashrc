# .bashrc
if [ -f ~/.envrc ]; then
    source ~/.envrc
fi

if [ -f ~/.aliasctxrc ]; then
    source ~/.aliasctxrc
fi

if [ -f ~/.aliasrc ]; then
    source ~/.aliasrc
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

eval "$(fzf --bash)"
eval "$(starship init bash)"

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# bash functions
function gcall {
  local groupName=$1
  if [ -z "$groupName" ]
  then
    echo "Missing parameter, possible values : exports | storage | certif"
    return
  fi

  if [ $groupName = "exports" ]
  then
    projectId="106"
  elif [ $groupName = "storage" ]
  then
    projectId="3552"
  elif [ $groupName = "certif" ]
  then
    projectId="633"
  fi

  for page in {1..5} ;
  do
    GITLAB_URL='https://gitlab.prod.aws.intraxiti.com/api/v4/groups/'$projectId'/projects?per_page=100&page='$page'&include_subgroups=true'
    PRIVATE_TOKEN_HEADER='PRIVATE-TOKEN: '$GITLAB_PRIVATE_TOKEN # Env var to define
    for repo in $(curl -s --header "$PRIVATE_TOKEN_HEADER" "$GITLAB_URL" | jq -r ".[].ssh_url_to_repo");
    do
      git clone $repo;
    done;
  done
}

function browse() {
    directory=`ls --color=never -ad $1/.* $1/* | fzf`
    if [ -z "$directory" ]; then
     directory=$1
    fi
    cd "$directory";
}

function renameGitBranch() {
    oldBranchName=$1
    newBranchName=$2
    git branch --move $oldBranchName $newBranchName
    git push --set-upstream origin $newBranchName
    git push origin --delete $oldBranchName
}
