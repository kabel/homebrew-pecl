require_relative "../lib/php_pecl_formula"

class PhpMsgpack < PhpPeclFormula
  extension_dsl "Interfacing with MessagePack"

  url "https://pecl.php.net/get/msgpack-2.1.2.tgz"
  sha256 "912ff4d33f323ea7cb04569df5ae23c09ce614412a65c39c2ca11f52802abe82"
  revision 2
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "5f0f1735a11d656ea28df8b5ff5717dd535766fd1dc786a0a6ba155e0b31d905"
    sha256 cellar: :any_skip_relocation, monterey: "a5db3c42bf805df2e22fa3189cc65e1a3ab17183b8214397175e1a1e6f2773cb"
    sha256 cellar: :any_skip_relocation, big_sur:  "6a61a66f559dd59374e1a2b0b0e4eb5c1d3598e3d55cc05a4bbb307e37883274"
  end

  depends_on "msgpack"

  conf_order "05"
end
