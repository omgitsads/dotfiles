omp() {
  command omp --config "$HOME/.omp/agent/presets/active.yml" "$@"
}

omp-use-anthropic() {
  local preset_dir="$HOME/.omp/agent/presets"
  command ln -sfn "$preset_dir/anthropic-main.yml" "$preset_dir/active.yml" || return
  print "OMP preset: Anthropic main, OpenAI review"
}

omp-use-openai() {
  local preset_dir="$HOME/.omp/agent/presets"
  command ln -sfn "$preset_dir/openai-main.yml" "$preset_dir/active.yml" || return
  print "OMP preset: OpenAI main, Anthropic review"
}

omp-active-preset() {
  local active="$HOME/.omp/agent/presets/active.yml"
  if [[ -L "$active" ]]; then
    print "${active:A}"
  elif [[ -e "$active" ]]; then
    print "$active"
  else
    print -u2 "OMP preset is not configured"
    return 1
  fi
}
