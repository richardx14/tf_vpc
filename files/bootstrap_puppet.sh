#!/bin/bash
sudo curl https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb -o puppetlabs-release.deb
sudo dpkg -i puppetlabs-release.deb
sudo apt-get -qq update
sudo apt-get install -yq puppet-agent
sudo /opt/puppetlabs/bin/puppet module install puppet-nginx
sudo /opt/puppetlabs/bin/puppet module install puppetlabs-apt
cat >/tmp/nginx.pp << "EOF"
class{'nginx': }
nginx::resource::server{'www.example.com':
    www_root => '/var/www/html/',
  }
EOF
sudo /opt/puppetlabs/bin/puppet apply /tmp/nginx.pp
