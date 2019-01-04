cd "${0%/*}"
cd ..
# Remove all branches with the name "ExPeRiMeNtAl"
git branch -D $(git branch | grep ExPeRiMeNtAl)