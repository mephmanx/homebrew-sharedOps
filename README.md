# homebrew-sharedops
Homebrew tap for shared ops utilities.

## Overview

> This utility will display the keys and values of a pre-configured set of keys that are stored in the target Enterprise Vault instance.

This script displays the values of a pre-configured set of secrets from an enterprise vault instance. The script will:

- Create .github-token-vault-ops-keys file in the user's home directory if it does not exist to store github token.
- Create .vault-target-vault-ops-keys file in the user's home directory if it does not exist to store vault url.
- Create .keys-list-vault-ops-keys in the user's home directory if it does not exist to store list of keys to display.  This value will be populated with the defaults and can be edited as needed.

## Requirements

- HashiCorp Vault Cli Homebrew Formula.  Will be installed if not already present.

## Usage

- Create a github token with read access to the enterprise vault instance.
- Provide the github token, vault target, and keys list to the script.

```sh
show-keys.sh -g|--githubToken <githubToken> -t|--vaultTarget <vaultTarget> -k|--keysList <keysList>
```

## About Licensing

Read more about [Licensing](https://docs.github.com/en/free-pro-team@latest/rest/reference/licenses).

## Author

Dotcom Row

- [Twitter](https://twitter.com/dotcomrow)
- [GitHub](https://www.github.com/dotcomrow)

## License

Copyright (c) 2021 Dotcom Row (@dotcomrow)
This software is released under the MIT License, see LICENSE.