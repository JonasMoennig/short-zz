[ -d ~/.shortest_zz.d ] || mkdir ~/.shortest_zz.d
zzify(){ ln -s "$PWD" ~/.shortest_zz.d/"$1"; }
zz(){ [ $# != 0 ] && cd "$(readlink -f ~/.shortest_zz.d/"$1")" || ls -o --time-style=+  ~/.shortest_zz.d; }
zzdel(){ rm ~/.shortest_zz.d/"$1"; }
