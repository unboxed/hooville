Common
======

This "common" role defines the base state of all hosts in the system.

By running common at least once on all hosts ( presumably during initialization of the environment ) you can be assured of a minimum viable set of packages and consistent base configuration across all machines in the network.

Other Ansible roles in this repository _should_ be able to make some basic assumptions about this state and build from it in order to achieve their goals.

This design results in tighter coupling between the roles themselves and breaks the intention of a role (to be a standalone definition of state) in favor of a more orchestrated approach to the whole system.

Requirements
------------

This role presupposes that the underlying operating system adheres to the spec defined in `meta/main.yml` and that the target host is either a VM or physical host with defined internet access.

Bootstrapping of the system to a state where Ansible can be run against it is beyond the scope of this role.

See the `terraform` directory in this repo for more information about how to provision "bare-metal" in preparation for this role.

Role Variables
--------------

* `default_user` - a role variable set in `defaults/main.yml` which specifies the default username to be created on the dev-vm.

* `github_username` - Make sure you specify your github username so we can get your sshkeys.

Dependencies
------------

None.


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: hooville.commmon }

License
-------

BSD

Author Information
------------------

* Sven Agnew
  E: sven.agnew@unboxedconsulting.com
  T: @kangohammer
