#!/bin/bash

zzify(){ echo "local ZZBOOKMARK$1=\"$PWD\"" >> ~/.even_shorter_zz; }

zz(){
  source ~/.even_shorter_zz
  if [[ $# != 0 ]]; then
    cd "$(eval echo \$ZZBOOKMARK$1)"
  else
    cut -c17- ~/.even_shorter_zz
  fi
}
