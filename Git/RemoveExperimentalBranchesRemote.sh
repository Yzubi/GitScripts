cd "${0%/*}"
cd ..
# Remove all branches with the name "ExPeRiMeNtAl"
git branch -r | awk -F/ '/\/ExPeRiMeNtAl/{print $2}' | xargs -I {} git push origin :{}