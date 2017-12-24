if [ -d ".deploy_git/$1" ] && [ -n "$1" ]; then
    undeploy=$(cat .deployignore | xargs | sed "s: :\|:g; s:\.:\\\.:g;")'|^\.$|^\.\.$'
    ls -a | grep -Ev $undeploy | xargs -I % sh  -c "cp -r % .deploy_git/$1/"
    cd .deploy_git/$1
    git add .
    git commit -m "`date '+%Y-%m-%d %H:%M:%S'`"
    git push --set-upstream origin master
else
    echo "No Such Directory"
fi
