shortcut-commit-msg-hook
=========================

A prepare-commit-msg hook for [pre-commit](https://pre-commit.com/).

If present in the branch name, this hook prepends the Shortcut Story ID to the commit message.

### Using with pre-commit

Add this to your `.pre-commit-config.yaml`

```yaml
-   repo: https://github.com/Masabi/shortcut-commit-msg-hook
    rev: v0.2
    hooks:
    -   id: shortcut-commit-msg-hook
```

and install prepare-commit-msg hooks using
```
pre-commit install --hook-type prepare-commit-msg
```
