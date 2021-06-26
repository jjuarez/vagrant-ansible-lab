# .bashrc

__node_version() {
  [[ -n "$(command -v node 2>/dev/null)" ]] && node --version
}

NODENV_HOME="${HOME}/.nodenv"

[[ -d "${NODENV_HOME}" ]] && {
  export PATH="${NODENV_HOME}/bin:${NODENV_HOME}/shims:${PATH}"
  eval "$(nodenv init -)"
}
