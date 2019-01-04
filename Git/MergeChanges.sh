cd "${0%/*}"
cd ..
#Commit
date="+%Y-%m-%d_%H-%M-%S"
commit_message="$@"
git add -A
git commit --allow-empty-message --allow-empty -m "$commit_message"
# Create a new ExPeRiMeNtAl branch
git checkout -b ExPeRiMeNtAl_Merge"$commit_message"_"$(date "$date")"
#Go to stable
git checkout stable
git add -A
git commit --allow-empty-message -m "$commit_message"
git merge --squash master
git add -A
git commit --allow-empty-message --allow-empty -m "$commit_message"
git checkout master
