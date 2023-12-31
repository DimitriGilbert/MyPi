# MyPi completion                                          -*- shell-script -*-

# This bash completions script was generated by
# completely (https://github.com/dannyben/completely)
# Modifying it manually is not recommended

_MyPi_completions_filter() {
  local words="$1"
  local cur=${COMP_WORDS[COMP_CWORD]}
  local result=()

  if [[ "${cur:0:1}" == "-" ]]; then
    echo "$words"
  
  else
    for word in $words; do
      [[ "${word:0:1}" != "-" ]] && result+=("$word")
    done

    echo "${result[*]}"

  fi
}

_MyPi_completions() {
  local cur=${COMP_WORDS[COMP_CWORD]}
  local compwords=("${COMP_WORDS[@]:1:$COMP_CWORD-1}")
  local compline="${compwords[*]}"

  case "$compline" in
    'install docker-cmd'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_MyPi_completions_filter "--config --cmd -c --use-config --no-use-config --no-config --install-from-config --no-install-from-config")" -- "$cur" )
      ;;

    'install docker'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_MyPi_completions_filter "--config --use-config --no-use-config --no-config --install-from-config --no-install-from-config")" -- "$cur" )
      ;;

    'install apt'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_MyPi_completions_filter "--cmd --package -p --config --use-config --no-use-config --no-config --install-from-config --no-install-from-config")" -- "$cur" )
      ;;

    'install git'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_MyPi_completions_filter "--repo -r --directory -d --config --use-config --no-use-config --no-config --install-from-config --no-install-from-config")" -- "$cur" )
      ;;

    'install omz'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_MyPi_completions_filter "--config --plugin -p --use-config --no-use-config --no-config --install-from-config --no-install-from-config")" -- "$cur" )
      ;;

    'mesure cpu'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_MyPi_completions_filter "temperature temp voltage volt frequency freq clock ram mem memory")" -- "$cur" )
      ;;

    'mesure gpu'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_MyPi_completions_filter "ram voltage volt frequency freq clock")" -- "$cur" )
      ;;

    'mesure ram'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_MyPi_completions_filter "cpu arm gpu")" -- "$cur" )
      ;;

    'nfs-export'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_MyPi_completions_filter "--config --export -e --directory -d --host --ip -i --options -o --use-config --no-use-config --no-config")" -- "$cur" )
      ;;

    'add-fstab'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_MyPi_completions_filter "--config --line -l --file-system --fs --mount-point --mount --type --options --dump --pass --use-config --no-use-config --no-config")" -- "$cur" )
      ;;

    'install'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_MyPi_completions_filter "apt docker docker-cmd git omz --config --apt -a --git -g --git-clone-dir --clone-dir --gcd --docker -d --mkdir --mkdir-opt --fstab --nfs-export --post-install --omz-plugin --apt-cmd --desktop --de --apt-install --no-apt-install --no-apt --git-install --no-git-install --install-docker --no-install-docker --docker-install --no-docker-install --install-nfs --no-install-nfs --reboot --no-reboot --install-omz --no-install-omz --install-desktop --no-install-desktop --no-desktop --no-de")" -- "$cur" )
      ;;

    'updater'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_MyPi_completions_filter "--config --shutdown --use-config --no-use-config --no-config --apt --no-apt --git --no-git --docker --no-docker --dist-upgrade --no-dist-upgrade --apt-clean --no-apt-clean --reboot --no-reboot")" -- "$cur" )
      ;;

    'mesure'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_MyPi_completions_filter "cpu gpu ram")" -- "$cur" )
      ;;

    *)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_MyPi_completions_filter "add-fstab install mesure nfs-export updater")" -- "$cur" )
      ;;

  esac
} &&
complete -F _MyPi_completions MyPi

# ex: filetype=sh
