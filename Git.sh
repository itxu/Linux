# Check config info
git config --list

# Initial new local reposity file
git init

# Add file named example.sh before commit
git add * 
git add example.sh

# Commit "example"
git commit -m "example" 

# Check status -s for short
git status -s



# Clone repository
git clone https://github.com/520/Linux.git

# Remove example.sh 
git rm example.sh

# Send to remote repository:
git push

# Reset password
git config --global --unset user.password
git push

# Change username and email
git config --global user.name "example"
git config --global user.email example@example.com




