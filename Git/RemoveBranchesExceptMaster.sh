cd "${0%/*}"
cd ..
# Remove all branches except master
git branch | grep -v "master" | xargs git branch -D 