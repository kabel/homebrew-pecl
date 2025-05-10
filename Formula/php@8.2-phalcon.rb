require_relative "../lib/php_pecl_formula"

class PhpAT82Phalcon < PhpPeclFormula
  extension_dsl "Phalcon is a full stack PHP framework offering low resource consumption and high performance"

  url "https://pecl.php.net/get/phalcon-5.9.3.tgz"
  sha256 "2b1983f09b56fc2779509a8ac1df776c368782538a7ef6601c0d4aef9892fe83"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "9601e4dd5d6166156aa57cbaaadc2ad6f5e5ca7c1fdfb206588631182d569a4c"
    sha256 cellar: :any_skip_relocation, ventura: "2d01f45f7f198f99399053b29c9d9e6a732f78a7efc93770d69db4e30ef8d607"
  end

  deprecate! date: "2026-12-31", because: :unsupported
end
