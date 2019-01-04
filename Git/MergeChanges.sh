cd "${0%/*}"
cd ..
#Commit
date="+%Y-%m-%d_%H-%M-%S"
commit_message="$@"
git add -A
git commit --allow-empty-message --allow-empty -m "$commit_message"
# Create a new ExPeRiMeNtAl branch
git checkout -b ExPeRiMeNtAl_Merge_"$commit_message"_"$(date "$date")"
#Go to stable
git checkout stable
git commit --allow-empty-message -m "$commit_message"
git merge --no-commit --squash master
git commit --allow-empty-message --allow-empty -m "$commit_message"
git checkout master
