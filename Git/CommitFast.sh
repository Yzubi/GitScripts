cd "${0%/*}"
cd ..
commit_message="$@"

#Date
date="+%Y-%m-%d_%H-%M-%S"
commit_message="$@"

# Stage in all files
git add -A
# Commit + Your message
git commit --allow-empty-message -m "$commit_message"
# Create a new ExPeRiMeNtAl branch
git checkout -b ExPeRiMeNtAl"$commit_message"_"$(date "$date")"
#Go to master branch
git checkout master