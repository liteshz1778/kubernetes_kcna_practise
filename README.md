This repo content practise files of kubernetes kcna<br><br>

**ShellScript to Configure this GIT Repository ---------->**<br><br>
#!/bin/bash<br>
git config --global credential.helper store<br>
<!------If we want to delete/edit then update this file ~/.git-credentials/store ----->
git init<br>
<br>
read -p "Enter repo name: " GIT_REPO_NAME<br>
echo "Repo name entered: " $GIT_REPO_NAME<br>
<br>
git checkout -b branch_Litesh<br>
git clone -b branch_Litesh https://github.com/liteshz1778/$GIT_REPO_NAME.git<br>
<br>
git remote add my_repo_name https://github.com/liteshz1778/$GIT_REPO_NAME.git<br>
git remote show my_repo_name<br>
git remote -v <br>
<br><br>
#sleep 15<br>
#rm -rfv /root/code/$GIT_REPO_NAME<br>
