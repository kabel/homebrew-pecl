require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.12.0.tgz"
  sha256 "4f45cb699bf6498b7522866711b51c1437bec90c362d6cbc254bef3df8cb1727"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "9e37dd23ebd87c2fe517e35bd51653190215124cd41dfaead86f3a5ecc8a1c90" => :catalina
    sha256 "b101ccc1f0fcd994963ff82330fd759b349373de9488ab9e369c56e904638144" => :mojave
  end
end
