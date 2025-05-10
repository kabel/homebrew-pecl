require_relative "../lib/php_pecl_formula"

class PhpAT83Phalcon < PhpPeclFormula
  extension_dsl "Phalcon is a full stack PHP framework offering low resource consumption and high performance"

  url "https://pecl.php.net/get/phalcon-5.9.3.tgz"
  sha256 "2b1983f09b56fc2779509a8ac1df776c368782538a7ef6601c0d4aef9892fe83"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "792aa0da1fc820125945fee8d80c1b7afd8c8c4c9812ece324c4ad4918d96adf"
    sha256 cellar: :any_skip_relocation, ventura: "78c2e553e2adf0507e4881c0bc03f9b5b490997148b8d64eae105d60c7278205"
  end

  deprecate! date: "2027-12-31", because: :unsupported
end
