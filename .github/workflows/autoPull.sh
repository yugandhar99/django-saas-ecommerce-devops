# Basc Script to Pull New Update from the rep

git config --global user.name "yugandhar99"
git config --global user.email "yugandharethamukkala1999@gmail.com"
# Set GITHUB_TOKEN environment variable
# Do not store GitHub tokens in git config. Use a credential manager or GitHub CLI authentication.
git config credential.helper store

git status
git pull
echo 'Pleas Wait , Loading files from github...'
read