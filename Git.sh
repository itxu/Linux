# Check config info
git config --list

# Initial new local reposity file
git init

# Change username and email
git config --global user.name "example"
git config --global user.email example@example.com

# Clone repository
git clone https://github.com/520/Linux.git

# Add file before commit
git add *

# Commit "example"
git commit -m "example" 
# Commit any files you've added with git add
git commit -a 

# Send to remote repository:
git push origin master