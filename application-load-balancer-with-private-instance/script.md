In this project we deployed a web server in private instance using application load balancer

We created three instaces in different AZ with 1 public and 2 private instances.
Public instance is used to access private instace as bastion host.

For installing apache server we can use NAT gateway or NAT instance.
In this instance I used S3 gateway endpoint for installing apache server.

In two private instance we install apache server and started apache server.

```
sudo yum install httpd
sudo systemctl start httpd
sudo systemctl enable httpd
```

Created a index.html file in /var/www/html/ for web server.
```
sudo nano /var/www/html/index.heml
```

``"Hello This is Private server1"``

similarly we done this step on second private instance.

After creation of the instance we created a target group including  2 private instances

Then we deployed application load balancer with target group attached to it.
