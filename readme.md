# Certbot installer

Install latest version of [certbot](https://github.com/certbot/certbot).

This makes Certbot is useful with the latest Ubuntu—still very helpful with Ubuntu25.10.
Probably for latest Debian as well and is also valid for older Ubuntu 21.04 / 21.10.


## How to Install

Run the following command with a sudoer:

```bash
curl -o- https://raw.githubusercontent.com/vinyll/certbot-install/master/install.sh | bash
```
> If you meet any error, see the [Troubleshooting](#Troubleshooting) section below.

## How to Uninstall

```bash
curl -o- https://raw.githubusercontent.com/vinyll/certbot-install/master/uninstall.sh | bash
```

## Why this instead of the official install?

You may prefer the regular installation of certbot from official PPA.

However, if you experiment [the following error with some Ubuntu releases](https://github.com/certbot/certbot/issues/7951), this install will prevent and solve.

```
AttributeError: module 'acme.challenges' has no attribute 'TLSSNI01'
```

This is also interesting if you need to work with the latest release of certbot at all.

## Troubleshooting

Error:
_error: command '/usr/bin/x86_64-linux-gnu-gcc' failed with exit code 1_:

Fix:
```sh
sudo apt install -y libaugeas-dev
```
