# Art of Monitoring Example Rails Application

In this document we will walk you through the installation. This application requires specific version of ruby. And we are going to install it in ubuntu 18.04 and CentOS 8.

## Installing Rails Application on Ubuntu 18.04

Before installing the application we are going to install ruby with RVM (Ruby Version Manager). But first we need to install some dependencies with the following command:

### Install Ruby-2.6.3
```
sudo apt-get install gcc autoconf curl g++  gnupg automake bison libc6-dev libffi-dev libgdbm-dev libncurses5-dev libsqlite3-dev pkg-config sqlite3 zlib1g-dev libtool libyaml-dev make libgmp-dev libreadline-dev libssl-dev nodejs -y

```
Next install the key with the following command:

```
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
```
Next download the RVM installation script from the project’s website with the following command:

```
curl -sSL https://get.rvm.io | bash -s stable
```
After the installation is completed you will get the starting source path and it looks like this ```source /home/vagrant/.rvm/scripts/rvm```.

Next you can install any version of ruby, in our case we need ruby-2.6.3 to run the application with the following command:

```
rvm install "ruby-2.6.3"
```
After the installation is completed run the following command to use the installed version:

```
rvm use 2.6.3 --default
```
To check the installed ruby version run the following command:

```
ruby -v
```
For more types of installation check this article [How to Install Ruby on Ubuntu 18.04](https://www.atlantic.net/vps-hosting/how-to-install-ruby-on-ubuntu-18-04/)

### Download Rails Application

Download the rails application to your environment with any method you prefer, we are going to clone it with the following command:

```
git clone https://github.com/turnbullpress/aom-rails.git
```
Next you can follow along with the Art of Monitoring book on printed page number 439. or test the application before continue to the book by installing gem with bundle inside the aom-rails directory with the following command:

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
Now you can access to the application through localhost or your own IP setting.

Default user is:

user: ```user@example.com```
password: ```changeme```
