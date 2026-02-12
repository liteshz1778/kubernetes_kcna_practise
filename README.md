This repo content practise files of kubernetes kcna<br><br>

**ShellScript to Configure this GIT Repository ---------->**<br><br>
#!/bin/bash
git config --global credential.helper store
# If we want to delete/edit then update this file ~/.git-credentials/store 

git init

read -p 'Enter repo name: ' GIT_REPO_NAME
echo 'Repo name entered: ' $GIT_REPO_NAME

git checkout -b branch_Litesh
git clone -b branch_Litesh https://github.com/liteshz1778/$GIT_REPO_NAME.git

sleep 2
cd ./$GIT_REPO_NAME || exit 1
sleep 2

git config --global --unset-all user.name
git config --global --unset-all user.email
git config --global user.name = "liteshz"
git config --global user.email = "zadane1778.litesh@gmail.com"
git config --global --list

git remote add my_repo_name https://github.com/liteshz1778/$GIT_REPO_NAME.git
git remote show my_repo_name
git remote -v 

#sleep 15
#rm -rfv /root/code/$GIT_REPO_NAME

#Added sleep after each alias as it was not working simultaneously.
#alias k='kubectl' kget='kubectl get' kdes='kubectl describe' kcreate='kubectl create' kapply='kubectl apply' kdelete='kubectl delete'
alias k='kubectl'
sleep 1
alias kget='kubectl get' 
sleep 1
alias kdes='kubectl describe' 
sleep 1
alias kcreate='kubectl create' 
sleep 1
alias kapply='kubectl apply' 
sleep 1
alias kdelete='kubectl delete'
#List out the alias created
alias

#unalias kget kdes kcreate kapply kdelete
