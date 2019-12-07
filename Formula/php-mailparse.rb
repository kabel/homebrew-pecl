require_relative "../lib/php_pecl_formula"

class PhpMailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://git.php.net/?p=pecl/mail/mailparse.git;a=snapshot;h=ac3be83e2c752a04f4ea0029ed71ed5e52e70af7;sf=tgz"
  sha256 "d98551251669f04c6cc5d21a6e0557587802319edcd4bda4eba1c16f35bc3077"
  version "3.0.4pre.ac3be83"
end
