require_relative "../lib/php_pecl_formula"

class PhpAT82Msgpack < PhpPeclFormula
  extension_dsl "Interfacing with MessagePack"

  url "https://pecl.php.net/get/msgpack-2.2.0.tgz"
  sha256 "82aa1e404c5ff54ec41d2a201305cd6594ed14a7529e9119fa7ca457e4bbd12a"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "f41f67dfc7ff7ad476b934c7c50dcc31ca568ff57933b1707b6be4f1890c0834"
    sha256 cellar: :any_skip_relocation, ventura:  "9daf8dded6519a8e2e6f58029cf1b06bed01f5d9ce12d927fb89cb3bef3119bc"
    sha256 cellar: :any_skip_relocation, monterey: "84e8685c99e9bbd100aba814eb98b1c90a67d418626f9c3c292d4fd2fe70b9ee"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  depends_on "msgpack"

  conf_order "05"
end
