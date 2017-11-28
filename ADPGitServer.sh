echo Input Project Name:
read proj
mkdir $proj.git
cd $proj.git
git init --bare
cd hooks

echo '#!/bin/bash
re="([^/]*).git$"

if [[ $PWD =~ $re ]]; then
  projgit=${BASH_REMATCH[0]};
  proj=${BASH_REMATCH[1]};

  cd ..

  if [ ! -d "$proj" ]; then
    git clone $projgit $proj
  else
    cd $proj
    unset GIT_DIR
    git pull
  fi
fi' > post-receive
chmod +x post-receive

cd ../..
git clone $proj.git $proj

