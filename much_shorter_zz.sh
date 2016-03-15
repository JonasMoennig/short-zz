#!/bin/bash

zzify(){
  mkdir ~/.much_shorter_zz.d 2>/dev/null
  cd ~/.much_shorter_zz.d
  ln -s $OLDPWD $1
  cd -
}

zz(){
  cd ~/.much_shorter_zz.d
  if [[ $# != 0 ]]
  then
    cd $1 2>/dev/null || echo "Bookmark not found"
  else
    ls -l
  fi
}
