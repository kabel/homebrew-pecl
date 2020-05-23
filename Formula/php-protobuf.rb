require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.12.1.tgz"
  sha256 "5877032d206dc33a8135b6e0f1739b6c3f9e533cd2526e803366ed3a3fb7a3f4"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "74f9f33438419a6f276da43e4e41a24a5688b577fe6e58f286170f7414a8d903" => :catalina
    sha256 "9d2d6bcfa15e1e73f1c3db6afeff9f8db64f57a2e7458d04621a29be3ed4a6f4" => :mojave
  end
end
