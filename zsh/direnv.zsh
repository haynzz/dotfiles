# direnv configuration for auto-loading .envrc files
# https://direnv.net/
#
# This module enables automatic loading of environment variables
# from .envrc files when entering directories. Useful for:
# - Project-specific environment variables
# - MCP server tokens for Claude Code
# - API keys and secrets (keep .envrc in .gitignore!)
#
# Usage:
#   1. Create .envrc file in project directory
#   2. Run 'direnv allow' to trust the file
#   3. Variables are loaded automatically when entering the directory

if command -v direnv &> /dev/null; then
    # Hook direnv into the shell
    eval "$(direnv hook zsh)"

    # Optional: Make direnv output less verbose
    # Uncomment the following line to hide direnv loading messages
    # export DIRENV_LOG_FORMAT=""

    # Optional: Set custom direnv config directory
    # export DIRENV_CONFIG=$HOME/.config/direnv
else
    # direnv not found - provide installation instructions
    if [[ -z "$DIRENV_INSTALL_WARNED" ]]; then
        echo "ℹ️  direnv is not installed. Install with: brew install direnv"
        export DIRENV_INSTALL_WARNED=1
    fi
fi