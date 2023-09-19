function mkvenv --wraps='python -m venv .venv && . .venv/bin/activate.fish' --description 'alias mkvenv=python -m venv .venv && . .venv/bin/activate.fish'
    python -m venv .venv $argv && . .venv/bin/activate.fish
end
