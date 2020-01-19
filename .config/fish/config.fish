# User binaries that should be part of the path
if not contains ~/bin $PATH; set -a PATH ~/bin; end
set -x EDITOR vim

# Plugin management (Auto Install Fundle :o)
if not functions -q fundle; eval (curl -sfL https://git.io/fundle-install); end
fundle plugin 'danhper/fish-ssh-agent'
fundle plugin 'franciscolourenco/done'
fundle plugin 'fishpkg/fish-humanize-duration'
fundle init

# Other Initialization
function fish_right_prompt -d "Write out the right prompt"
  date '+%H:%M'
end

# Load colors if we're on linux and need to
if which dircolors > /dev/null
  eval (dircolors -c ~/.dircolors)
end
fish_vi_key_bindings

# Configure done to exclude certain commands
set -l exclude_commands '(git (?!push|pull))'  # All gits but push pull
set -a exclude_commands '(vim)'
set -U __done_exclude (string join '|' $exclude_commands)

