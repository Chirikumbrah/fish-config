function mkenv --wraps='python -m venv .venv && . .venv/bin/activate.fish' --description 'alias mkenv=python -m venv .venv && . .venv/bin/activate.fish'
    python -m venv .venv $argv && . .venv/bin/activate.fish
end
