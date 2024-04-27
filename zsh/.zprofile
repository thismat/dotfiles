# macOS Specific
if [[ $(uname) == "Darwin" ]]; then
  # HomeBrew
  eval $(/opt/homebrew/bin/brew shellenv)

  # macOS Environment Variables
  
  # macOS path updates
  export PATH=$PATH:~/.bin/
fi

# Global Environment Variables
export BAT_THEME='GitHub'
