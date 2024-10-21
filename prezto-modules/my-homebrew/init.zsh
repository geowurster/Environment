# Configure Homebrew environment.

# Homebrew sends anonymous metrics about usage by default.
export HOMEBREW_NO_ANALYTICS=1

# For some reason this does not work:
#   export HOMEBREW_MAKE_JOBS=$(echo "$NCPU" | awk "{printf int(int($1) * 0.75)}")
# but this does:
export HOMEBREW_MAKE_JOBS=$(printf %.0f $(echo "$(sysctl -n hw.ncpu) * 0.75" | bc))
