# tmux-mode

Show mode in tmux statusline.

## Install
With [Tmux Plugin Manager][tpm]

Add plugin to the list of TPM plugins in `.tmux.conf`:
```
set -g @plugin 'daiwahome/tmux-mode'
```
and hit `prefix + I`.

## Usage
Add `#{mode}` to `status-left` option.

[tpm]: https://github.com/tmux-plugins/tpm
