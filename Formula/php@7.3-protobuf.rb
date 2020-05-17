require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.12.0.tgz"
  sha256 "4f45cb699bf6498b7522866711b51c1437bec90c362d6cbc254bef3df8cb1727"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "1d5eaec7b2c52f60854927eb29170c769a0b3e70dd5bf9427c636b34b14e012b" => :catalina
    sha256 "c13134ff418f623892cf03f0fce9805da1380c58a31f6e829cc4279494b2cd07" => :mojave
  end
end
