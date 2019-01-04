cd "${0%/*}"
cd ..
#Username
username="$1"
git config user.name "$username"
#Your e-mail
email="$2"
git config user.email "$email"
