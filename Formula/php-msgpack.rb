require_relative "../lib/php_pecl_formula"

class PhpMsgpack < PhpPeclFormula
  extension_dsl "Interfacing with MessagePack"

  url "https://pecl.php.net/get/msgpack-2.2.0.tgz"
  sha256 "82aa1e404c5ff54ec41d2a201305cd6594ed14a7529e9119fa7ca457e4bbd12a"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "241ea57a6bf2c9c44bc88a75a33632ceb5cc9adc068ab2f0312b7d04dad52ff9"
    sha256 cellar: :any_skip_relocation, ventura:  "3475e0e130c6c2b9b59398b1386355956c3d8f87171e091a62ef7d43658e3c56"
    sha256 cellar: :any_skip_relocation, monterey: "3483f9046653ed84fe0db2b04a90feace2744de1a7dd39c545fb5f6eb6783855"
  end

  depends_on "msgpack"

  conf_order "05"
end
