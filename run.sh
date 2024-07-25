if [ -z "$component" -o -z "$env" -o -z "$ssh_password" -o -z "$component" ]; then
  echo Input Missing
  exit 1
fi

ansible-playbook -i $component-$dev.rdevopsb79.online, -e ansible_user=ec2-user -e ansible_password=$ssh_password -e component=$component main.yml
