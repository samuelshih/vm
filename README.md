## VM
My personal virtual machine for rails development

## Requirements

* [VirtualBox](https://www.virtualbox.org)

* [Vagrant](http://vagrantup.com)

## SSH Keys

If you intend on using git from inside the VM, Make sure your ssh-agent is forwarding your keys (

  * Run `ssh-add -L` on your host, and make sure your Github private key is in there.
  * Match it against the Github fingerprint (`ssh-keygen -l -f /path/to/your/ssh/pubkey`). The standard key location is `~/.ssh/id_rsa.pub`.
  * If not, `ssh-add -K /path/to/your/private/key` (standard location is `~/.ssh/id_rsa`)
  * On successful add, it will report `Identity added: /your/ssh/private/key`
  * If you have no keys at all, read [SSH key help](https://help.github.com/articles/generating-ssh-keys) for directions on creating and adding keys to Github.

### Vagrant commands

  * `vagrant up` will start the vagrant server (if suspended / halted).
  * `vagrant halt` will shut down the VM entirely.
  * `vagrant suspend` will hibernate the VM.
  * `vagrant status` will show the current VM status.
  * `vagrant provision` will redo the VM setup (without cloning the repositories OR creating databases).
  * `vagrant reload --provision` will force provision your VM.