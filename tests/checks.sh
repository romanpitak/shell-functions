
pr_check_command nginx
# pr_check_command nvm
pr_check_command rvm
pr_check_command node
pr_check_command npm
pr_check_command coffee 'npm install --global coffee-script'
npm remove --global coffee-script
pr_check_command coffee 'npm install --global coffee-script'
