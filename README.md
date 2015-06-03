# Hooville #


## Testing ##

Testing is mainly handled by [serverspec](http://serverspec.org)

A recent version should be installed if you `bundle install` using the repo provided Gemfile.

Create tests on a per-host basis in the `serverspec/spec/` directory.

When testing using the provided Vagrant VM, make sure you specify the default vagrant password and run your specs with:

```bash
~:$ SUDO_PASSWORD=vagrant bundle exec rake spec:dev-vm.ubxd.dev
```
