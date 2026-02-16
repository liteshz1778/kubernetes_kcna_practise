This repo content practise files of kubernetes kcna<br><br>

**ShellScript to Configure this GIT Repository ---------->**<br><br>

#!/bin/bash<br>
git config --global credential.helper store<br>
<!-- If we want to delete/edit then update this file ~/.git-credentials/store-->

git init<br>

read -p 'Enter repo name: ' GIT_REPO_NAME<br>
echo 'Repo name entered: ' $GIT_REPO_NAME<br>

git checkout -b branch_Litesh<br>
git clone -b branch_Litesh https://github.com/liteshz1778/$GIT_REPO_NAME.git<br>

sleep 2<br>
cd ./$GIT_REPO_NAME || exit 1<br>
sleep 2<br>

git config --global --unset-all user.name<br>
git config --global --unset-all user.email<br>
git config --global user.name = ""<br>
git config --global user.email =""<br>
git config --global --list<br>

git remote add my_repo_name https://github.com/liteshz1778/$GIT_REPO_NAME.git<br>
git remote show my_repo_name<br>
git remote -v<br> 

#sleep 15<br>
#rm -rfv /root/code/$GIT_REPO_NAME<br>

<!--Added sleep after each alias as it was not working simultaneously.-->
#alias k='kubectl' kget='kubectl get' kdes='kubectl describe' kcreate='kubectl create' kapply='kubectl apply' kdelete='kubectl delete'
cat << EOF >> .bashrc || exit 1 <br>
alias kget="kubectl get" <br>
alias kdes="kubectl describe" <br>
alias kaply="kubectl apply" <br>
alias kdel="kubectl delete" <br>
alias kcrt="kubetcl create" <br>
EOF <br>

<!--#List out the alias created-->
alias<br>

#unalias kget kdes kcreate kapply kdelete<br>

source .bashrc
