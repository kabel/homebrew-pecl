require_relative "../lib/php_pecl_formula"

class PhpAT83Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-4.29.1.tgz"
  sha256 "12cc3b38d055feb2eb4c6b4ca6e2c1e080906d06e9173eea2cc160ecd9d6374b"
  license "BSD-3-Clause"

  deprecate! date: "2027-12-31", because: :unsupported
end
