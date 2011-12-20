# Color shortcuts
CYAN=$fg[cyan]
CYAN_BOLD=$fg_bold[cyan]
RED=$fg[red]
YELLOW=$fg[yellow]
GREEN=$fg[green]
WHITE=$fg[white]
BLUE=$fg[blue]
BLUE_BOLD=$fg[blue]
RED_BOLD=$fg_bold[red]
YELLOW_BOLD=$fg_bold[yellow]
GREEN_BOLD=$fg_bold[green]
WHITE_BOLD=$fg_bold[white]
BLUE_BOLD=$fg_bold[blue]
MAGENTA=$fg[magenta]

# Grab the current version of ruby in use with gemset (via RVM): [ruby-1.8.7@gemset]
REDLINE_CURRENT_RUBY_="%{$WHITE%}[%{$MAGENTA%}\$(~/.rvm/bin/rvm-prompt i v g)%{$WHITE%}]%{$reset_color%}"
# Grab the current machine name
REDLINE_CURRENT_MACH_="%{$BLUE_BOLD%}%m%{$WHITE%}:%{$reset_color%}"
# Grab the current filepath, use shortcuts: ~/Desktop
REDLINE_CURRENT_LOCA_="%{$GREEN_BOLD%}%~\$(git_prompt_info)%{$reset_color%}"
# Grab the current username
REDLINE_CURRENT_USER_="%{$CYAN_BOLD%}%n%{$reset_color%}"
REDLINE_PROMPT_CHAR_="%{$GREEN%}>%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$YELLOW%}("
# Close it all off by resetting the color and styles.
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$YELLOW%})%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$GREEN_BOLD%} ✓"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$RED_BOLD%} ✗"

# Put it all together!
PROMPT="
$REDLINE_CURRENT_USER_@$REDLINE_CURRENT_MACH_$REDLINE_CURRENT_RUBY_$REDLINE_CURRENT_LOCA_
$REDLINE_PROMPT_CHAR_ "
