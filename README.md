# Art of Monitoring Example Rails Application

In this document we will walk you through the installation steps. This application requires specific version of Ruby. And we are going to install it in Ubuntu 18.04 and CentOS 8.

## Installing Rails Application on Ubuntu 18.04 and CentOS 8

### Install Ruby-2.6.3
Before installing the application we are going to install Ruby with RVM (Ruby Version Manager). But first we need to install some dependencies with the following command:

### Step 1

On Ubuntu 18.04:
```
sudo apt-get install gcc autoconf curl g++  gnupg automake bison libc6-dev libffi-dev libgdbm-dev libncurses5-dev libsqlite3-dev pkg-config sqlite3 zlib1g-dev libtool libyaml-dev make libgmp-dev libreadline-dev libssl-dev nodejs -y

```

On CentOS 8:
```
sudo dnf install curl gcc bzip2 openssl-devel libffi-devel readline-devel zlib-devel gdbm-devel ncurses-devel
```

### Step 2

Install the key on Ubuntu 18.04 with the following command:
```
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
```
On CentOS 8:
```
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
```

### Step 3

Next download the RVM installation script from the project’s website on Ubuntu 18.04 with the following command:
```
curl -sSL https://get.rvm.io | bash -s stable
```

On CentOS 8:
```
curl -sSL https://get.rvm.io | bash -s stable
```

### Step 4

After the installation is completed you will get the starting source path and it will look like this ```source /home/YourUserName/.rvm/scripts/rvm``` where the "YourUserName" is a variable according to your installation, or you can run the following command on Ubuntu 18.04 or CentOS 8:
```
source ~/.rvm/scripts/rvm
```

### Step 5

Next you can install any version of Ruby, in our case we need ruby-2.6.3 to run the application on Ubuntu 18.04 or CentOS 8 with the following command:
```
rvm install "ruby-2.6.3"
```

### Step 6

After the installation is completed run the following command on Ubuntu 18.04 or CentOS 8 to use the installed version:
```
rvm use 2.6.3 --default
```

To check the installed Ruby version run the following command:
```
ruby -v
```
For more types of installation check this article [How to Install Ruby on Ubuntu 18.04](https://www.atlantic.net/vps-hosting/how-to-install-ruby-on-ubuntu-18-04/) or CentOS check this article [How to Install Ruby on CentOS 8](https://linuxize.com/post/how-to-install-ruby-on-centos-7/)

### Download Rails Application

Download the Rails application to Ubuntu 18.04 or CentOS 8 with any method you prefer, we are going to clone it with the following command:

```
git clone https://github.com/turnbullpress/aom-rails.git
```
Next, you can follow the Art of Monitoring book in the "Building Monitored Applications" chapter. or test the application before continue to the book by installing Ruby gems with bundler, inside the aom-rails directory run the following command:

```
bundle install
```   
While inside aom-rails directory to avoid Migrations' error run the following two commands:

```
grep -rl "ActiveRecord::Migration$" db | xargs sed -i 's/ActiveRecord::Migration/ActiveRecord::Migration[5.2]/g'
```
```
rails db:migrate RAILS_ENV=development
```
Now you can run the server with the following command:
```
rails server -b 0.0.0.0 -p 3000 -e development
```
And you can access the Rails application through localhost or your own networking and IP settings.

Default user is:

user: ```user@example.com```
password: ```changeme```
