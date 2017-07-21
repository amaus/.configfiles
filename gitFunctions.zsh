function git_project_name() {
    local ref
    ref=$(command git rev-parse --quiet --show-toplevel 2> /dev/null)
    local ret=$?
    if [[ $ret != 0 ]]; then
        [[ $ret == 1 ]] && return # no git repo.
        ref=$(command git rev-parse --short HEAD 2> /dev/null) || return
    fi
    echo $(command basename $ref)
}

function is_git_repo(){
    local ref
    ref=$(command git status 2> /dev/null)
    local ret=$?
    if [[ $ret != 0 ]]; then
        echo 0
        return
    fi
    echo 1
}
