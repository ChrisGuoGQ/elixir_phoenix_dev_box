function install {
    echo installing $1
    shift
    apt-get -y install "$@" >/dev/null 2>&1
}

# echo adding swap file
# fallocate -l 4G /swapfile
# chmod 600 /swapfile
# mkswap /swapfile
# swapon /swapfile
# echo '/swapfile none swap defaults 0 0' >> /etc/fstab

echo add erlang-solutions
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
apt-get -qq update
# install Zsh zsh
# sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# sudo usermod -s /bin/zsh username
install Erlang esl-erlang
install Erlang-ssl erlang-ssl
install Erlang-dev erlang-dev
install Erlang-parsetools erlang-parsetools
install Elixir elixir
# install Inotify inotify-tools
install Git git
# install Redis redis-server
install Build-essential build-essential

# sudo apt-get install erlang-ssl erlang-dev erlang-parsetools inotify-tools redis-server postgresql postgresql-contrib libpq-dev
# install PostgreSQL postgresql postgresql-contrib libpq-dev
#sudo su - postgres
#psql
#\password postgres
# sudo -u postgres createuser --pwprompt deploy

# echo mix
# yes | mix local.hex
# yes | mix local.rebar
# yes | mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new.ez

# wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
# nvm install node
# npm install -g yarn




