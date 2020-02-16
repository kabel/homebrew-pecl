require_relative "../lib/php_pecl_formula"

class PhpAT72Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.11.4.tgz"
  sha256 "7d55bd13cb7c26bdea2b374e8a77d325651ed7da2d77875810221048b94bb29d"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "44fe1d4e114b3d43dc6c6a0a21d9ca9d7e41b5a38a2900fe1aa899ffbd71a777" => :catalina
    sha256 "90d52a61e20067d30130e2a11bcf362edc1969fdf265b12a918e4ee0971ffc24" => :mojave
  end
end
