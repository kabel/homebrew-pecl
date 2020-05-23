require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.12.1.tgz"
  sha256 "5877032d206dc33a8135b6e0f1739b6c3f9e533cd2526e803366ed3a3fb7a3f4"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "1d5eaec7b2c52f60854927eb29170c769a0b3e70dd5bf9427c636b34b14e012b" => :catalina
    sha256 "c13134ff418f623892cf03f0fce9805da1380c58a31f6e829cc4279494b2cd07" => :mojave
  end
end
