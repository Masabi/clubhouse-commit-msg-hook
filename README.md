clubhouse-commit-msg-hook
=========================

A prepare-commit-msg hook for [pre-commit](https://pre-commit.com/).

If present in the branch name, this hook prepends the Clubhouse Story ID to the commit message.

### Using with pre-commit

Add this to your `.pre-commit-config.yaml`

```yaml
-   repo: https://github.com/Masabi/clubhouse-commit-msg-hook
    rev: v0.1
    hooks:
    -   id: clubhouse-commit-msg-hook
```

and install prepare-commit-msg hooks using
```
pre-commit install --hook-type prepare-commit-msg
```
