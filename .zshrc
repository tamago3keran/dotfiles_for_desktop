# .zshrc

# --- Homebrew Initialization ---
# Specifically target the Apple Silicon path.
# We check if the binary exists before running shellenv to avoid errors.
# 'shellenv' sets up the environment variables (PATH, MANPATH, etc.) needed for Homebrew.
if [[ -x "/opt/homebrew/bin/brew" ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# --- mise Initialization ---
# mise is a runtime manager (like asdf).
# We check if 'mise' is available in the current PATH (which might have been updated by Homebrew above).
# If available, we activate it for zsh.
if command -v mise >/dev/null 2>&1; then
    eval "$(mise activate zsh)"
fi
