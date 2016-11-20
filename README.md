# saancho

> Command Line Password Manager

Saancho (Key) is a command line password manager that uses [gnupg](https://www.gnupg.org/) and AES256 symmetric encryption (AES256). All you have to remember is a single passphrase for your _saancho_ store and you are good to go. If you have used LastPass or Keepass, Saancho is similar thing but CLI based, small, simple and does exactly what I needed.

Implementation of Saancho is plain simple. All it does is use a file (defaults to `$HOME/.saancho.gpg` and overridable via `$SAANCHO_FILE` environment variable) to store the appropriate data and use grep and gpg (gpg2 is favored over gpg) commands.

## Installation

- Fire up your terminal and copy and run the following command:

```shell
sudo wget "https://raw.githubusercontent.com/nepalihackers/saancho/master/saancho" -O /usr/bin/saancho && sudo chmod +x /usr/bin/saancho
```

## Usage

Assuming you have done a global install of `saancho`, you can run it as:

```
$ saancho
Enter the passphrase for your saancho store:

Options available

	c - create new credential
	r - read existing credential
	d - delete credential
	b - backup credential
	e - exit Saancho

Enter the action you wish to perform:
```

The keystore is saved at `$HOME/.saancho.gpg` but if you wish to customize that, you can set `$SAANCHO_FILE` environment variable to whatever path you wish.

## To Do

- Implement random password generation
- Implement backup feature to backup to one of the cloud services (yet to figure out what service)
- Implement Copy to clipboard option
