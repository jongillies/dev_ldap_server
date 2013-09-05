# DevLdapServer

This repository contains the beginnings of a Ruby Gem which you can rename and customize.

## Installation

Clone this repository like this:

    git clone http://gitlab.c.apollogrp.edu/ruby-gems/gem_boostrap.git <YOUR_GEM_NAME>
    cd <YOUR_NEM_NAME>
    rm -rf .git
    ./rename.sh
    git init

Verify your .rvmrc is at the proper version.  Once that is done:

    cd ..
    cd <YOUR_GEM_NAME>
    # Accept the RVM warning

Update the lib<YOUR_GEM_NAME> with the appropriate information.  Then add the files and commit

    git add -A
    git commit -a -m "Initial commit"

    bundle

Execute rspec to make sure the tests run:

    rspec

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
=======
dev_ldap_server
===============

This gem will start and stop a self contained LDAP server.
