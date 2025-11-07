# Remove Git lock files
Remove-Item -Force .git/refs/remotes/origin/main.lock -ErrorAction SilentlyContinue
Remove-Item -Force .git/packed-refs.lock -ErrorAction SilentlyContinue
Remove-Item -Force .git/index.lock -ErrorAction SilentlyContinue

# Backup and remove .git folder
Move-Item .git .git_backup -Force -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force .git_backup -ErrorAction SilentlyContinue
