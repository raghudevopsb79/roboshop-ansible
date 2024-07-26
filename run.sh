if [ -z "$component" -o -z "$env" -o -z "$ssh_password" -o -z "$vault_token" ]; then
  echo Input Missing
  exit 1
fi

ansible-playbook -i $component-$env.rdevopsb79.online, -e env=$env -e ansible_user=ec2-user -e ansible_password=$ssh_password -e component=$component -e vault_token=$vault_token main.yml
