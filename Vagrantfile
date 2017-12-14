Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-17.10"

  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get install -y build-essential \
                       php7.1-dev \
                       wget \
                       ca-certificates
    cd /
    wget https://github.com/php/php-src/archive/php-7.1.12.tar.gz
    tar zxf php-7.1.12.tar.gz
    rm php-7.1.12.tar.gz
  SHELL
end
