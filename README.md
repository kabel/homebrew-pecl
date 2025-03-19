![kabel/pecl Homebrew packages sourced from the PECL (PHP Extension Community Library) repository](https://repository-images.githubusercontent.com/198321627/2fbdcd80-f858-11ea-9918-e98efc78da29)

# kabel/pecl
[![sponsors](https://img.shields.io/github/sponsors/kabel)](https://github.com/sponsors/kabel/)
[![build status badge](https://img.shields.io/azure-devops/build/kevinabel0613/kevinabel/1)](https://dev.azure.com/kevinabel0613/kevinabel/_build?definitionId=1)
[![analytics last 30 days](https://img.shields.io/badge/analytics---30d-blue)](https://kabel.rocks/bottles-pecl-analytics.html)

This tap is an experiment to see if it's sustainable to use the pecl registry without using the `pecl` installer that is not included (deprecated) in core PHP since version 7.4.

Pull requests and version bumps are welcome. Bottles will be automatically generated from pull requests.

## How do I install these formulae?
`brew install kabel/pecl/<formula>`

Or `brew tap kabel/pecl` and then `brew install <formula>`.

Or installation via URL (which will not receive updates):

```sh
brew install https://raw.githubusercontent.com/kabel/homebrew-pecl/main/Formula/<formula>.rb
```

## Documentation
`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

## Troubleshooting
First, please run `brew update` and `brew doctor`.

If you can an error about the `master` branch, please try `brew update-reset` to fix the default branch association to `main`.

Second, read the [Troubleshooting Checklist](https://docs.brew.sh/Troubleshooting).

**If you don't read these it will take us far longer to help you with your problem.**

## License
Code is under the [BSD 2-clause "Simplified" License](https://github.com/Homebrew/homebrew-core/blob/master/LICENSE.txt).
