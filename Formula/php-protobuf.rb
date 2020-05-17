require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.12.0.tgz"
  sha256 "4f45cb699bf6498b7522866711b51c1437bec90c362d6cbc254bef3df8cb1727"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "74f9f33438419a6f276da43e4e41a24a5688b577fe6e58f286170f7414a8d903" => :catalina
    sha256 "9d2d6bcfa15e1e73f1c3db6afeff9f8db64f57a2e7458d04621a29be3ed4a6f4" => :mojave
  end
end
