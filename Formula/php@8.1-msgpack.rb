require_relative "../lib/php_pecl_formula"

class PhpAT81Msgpack < PhpPeclFormula
  extension_dsl "Interfacing with MessagePack"

  url "https://pecl.php.net/get/msgpack-3.0.0.tgz"
  sha256 "55306a84797d399c6b269181ec484634f18bea1330bbd9d7405043c597de69cd"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "db39c4bae22904e1c45b5fc93ac62af2179e6b6c32ac7e914c478b5087ac98a6"
    sha256 cellar: :any_skip_relocation, ventura:  "a49412f9835e60ea64355e08df30be83ff1794f6949a7cede1b25ec03be88645"
    sha256 cellar: :any_skip_relocation, monterey: "0ad36c1981aee4917d57f59e0f8709495c959fbaa4089ac55ddb84e06b11f592"
    sha256 cellar: :any_skip_relocation, big_sur:  "1812e8a067c8ae782db943376025aa69cf14322b53b46d5fcfc83bc6b00000b3"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  depends_on "msgpack"

  conf_order "05"
end
