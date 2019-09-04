
function rgts(){
    clear;
    declare -A rgconf=(
        [a]=''
    )
    local term="$1";
    local target="$2";
    local cwd="/home/jm/Examples/";
    if [[ -e "$target" ]]; then
        cwd="$target";
    else 
        cwd="/home/jm/Examples/"
    fi; # '**/*.{js,jsx,vue,ts,tsx}' 
    echo "Searching <$term> in $cwd ...";
    rg --regexp "$term" --smart-case --max-columns 4000 --pretty -t 'js' -t 'ts' -g '!**/*.{d,test,spec}.{js,ts}' -g '!**/{node_modules,tests,test,__tests__}/**' -g '!**/{dist,build}/**' $cwd
};  



function rgts2(){
    clear;
    declare -A rgconf=(
        [a]=''
    )
    local term="$1";
    local target="$2";
    local cwd="/home/jm/Examples/";
    if [[ -e "$target" ]]; then
        cwd="$target";
    else 
        cwd="/home/jm/Examples/"
    fi; # '**/*.{js,jsx,vue,ts,tsx}'
    declare -A rgOpts=(
        [--smart-case]=''
        [--max-columns]=4000
    );
    
    echo "Searching <$term> in $cwd ...";
    rg --regexp "$term" --smart-case --max-columns 4000 --pretty -t 'js' -t 'ts' -g '!**/*.{d,test,spec}.{js,ts}' -g '!**/{node_modules,tests,test,__tests__}/**' -g '!**/{dist,build}/**' $cwd
};  

  
##
function config(){
    set
}

function createExe(){
    local src="$1";
    local dest="$2";
    # copy with no permissions, no groups, and 
    rsync -v --no-p --no-g --chmod='ugo=rwX' $src $dest;
}; createExe

rsync --chmod=CHMOD 

    cp -v $src $dest;
    chmod -v -R --preserve-root 'u=rwx,g=rx' $dest;


$ cat test10
#!/bin/bash
# array variable to function test
function testit {
local newarray
newarray=(;‘echo “$@”’)
echo “The new array value is: ${n}
myarray=(1 2 3 4 5)
echo “The original array is ${myarratestit ${myarray[*]}
$
$ ./test10
The original array is 1 2 3 4 5
The new array value is: 1 2 3 4 5
$

