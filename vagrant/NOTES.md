# NOTES

When running bundle install for the first time on your VM, you might get an error installing json:

```sh

An error occurred while installing json (1.8.2), and Bundler cannot continue

```

If this happens, install the lbffi-dev and ruby-dev packages.

```sh

sven@dev:~$ sudo apt-get install libffi-dev ruby-dev

```
