set -q fish_most_recent_dir && [ -d "$fish_most_recent_dir" ] && cd "$fish_most_recent_dir"

function save_dir --on-event fish_exit
    set -U fish_most_recent_dir $PWD
end
