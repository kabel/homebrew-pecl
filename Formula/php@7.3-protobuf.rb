require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.11.4.tgz"
  sha256 "7d55bd13cb7c26bdea2b374e8a77d325651ed7da2d77875810221048b94bb29d"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "9e37dd23ebd87c2fe517e35bd51653190215124cd41dfaead86f3a5ecc8a1c90" => :catalina
    sha256 "b101ccc1f0fcd994963ff82330fd759b349373de9488ab9e369c56e904638144" => :mojave
  end
end
