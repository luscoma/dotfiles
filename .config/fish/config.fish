# User binaries that should be part of the path
set PATH $PATH ~/bin

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
eval (dircolors -c ~/.dircolors)
fish_vi_key_bindings
