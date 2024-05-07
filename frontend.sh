dnf install ngnix-y
systemctl enable nginx
systemctl start ngnix

rm -rf /usr/share/nginx/html/*
curl -o /tmp/frontend.zip https://expense-artifacts.s3.amazonaws.com/expense-frontend-v2.zip

cd /usr/share/nginx/html
unzip /tmp/frontend.zip

#Copy step is pending

systemctl restart nginx