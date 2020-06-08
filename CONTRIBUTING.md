# kabel/pecl tap contributing guidelines

## Pull requests

- Fork it.
- Create your feature branch (`git checkout -b fixing-blah`), please avoid working directly on the `master` branch.
- Check for unnecessary whitespace with `git diff --check` before committing.
- Commit your changes (`git commit -am 'Fixed blah'`).
- Push to the branch (`git push origin fixing-blah`).
- Create a new pull request.

## Rebuild bottle

Sometimes when upstream recipe is updated, a pecl bottle is required to be rebuilt to use newer libraries:

```
➔ php --version
PHP Warning:  PHP Startup: Unable to load dynamic library '/usr/local/opt/php@7.3-mongodb/lib/php/20180731/mongodb.so' (tried: /usr/local/opt/php@7.3-mongodb/lib/php/20180731/mongodb.so (dlopen(/usr/local/opt/php@7.3-mongodb/lib/php/20180731/mongodb.so, 9): Library not loaded: /usr/local/opt/icu4c/lib/libicuuc.66.dylib
  Referenced from: /usr/local/opt/php@7.3-mongodb/lib/php/20180731/mongodb.so
  Reason: image not found), /usr/local/lib/php/pecl/20180731//usr/local/opt/php@7.3-mongodb/lib/php/20180731/mongodb.so.so (dlopen(/usr/local/lib/php/pecl/20180731//usr/local/opt/php@7.3-mongodb/lib/php/20180731/mongodb.so.so, 9): image not found)) in Unknown on line 0
```

Example: https://github.com/kabel/homebrew-pecl/issues/7

This meams that `mongodb.so` requires `libicuuc.66.dylib`. but that is no longer available as brew now has `libicuuc.67.dylib`

The fix is simple:
- bump `revision` of and let bot do the rest (example: https://github.com/kabel/homebrew-pecl/commit/47b8a96c6f222d4147747b5e74a616e116923ffb)

Alternatively, you can re-install from source locally:

```
brew reinstall php@7.3-mongodb -s
```
