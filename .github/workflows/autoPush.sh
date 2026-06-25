git config --global user.name "yugandhar99"
git config --global user.email "yugandharethamukkala1999@gmail.com"
# Set GITHUB_TOKEN environment variable
# Do not store GitHub tokens in git config. Use a credential manager or GitHub CLI authentication.
git config credential.helper store

git status
git add .
echo 'Enter the commit message:'
# shellcheck disable=SC2162
read commitMessage

git commit -m "$commitMessage"

#echo 'Enter the name of the branch:'
#read branch

#git push origin $branch
git push origin main

read