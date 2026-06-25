# AGENTS.md

## Repo structure

GNU Stow dotfiles repo managed via the `omadot` CLI. Each top-level directory is a stow package symlinked into `$HOME`.

All config changes should be made in this repo, then deployed with:

```sh
omadot put <package>   # symlinks <package>/.config/<app>/ → ~/.config/<app>/
```

There are no install scripts, CI, or build steps.

## Key packages

| Directory | Purpose |
|-----------|---------|
| hypr | Hyprland WM config |
| omarchy | Omarchy desktop framework (themes, hooks, branding) |
| waybar, mako, walker | Bar, notifications, launcher |
| ghostty, kitty, alacritty | Terminal emulators |
| nvim | Neovim (LazyVim) |
| git | Git config |
| mise | Dev tool version manager (asdf successor) |
| opencode | OpenCode AI tool config |
| systemd | User systemd units |

## Conventions

- Every package mirrors the `$HOME` tree (usually `.config/<app>/`). Never put config files at a package root—they must be nested to match their stow target.
- No package depends on another; each is independently stowable.
- When editing Hyprland/Waybar/Omarchy/terminal configs, load the `omarchy` skill for desktop-specific guidance.
- When editing OpenCode config (`opencode/.config/opencode/`), load the `customize-opencode` skill.
