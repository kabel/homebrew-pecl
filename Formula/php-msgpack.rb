require_relative "../lib/php_pecl_formula"

class PhpMsgpack < PhpPeclFormula
  extension_dsl "Interfacing with MessagePack"

  url "https://pecl.php.net/get/msgpack-2.2.0.tgz"
  sha256 "82aa1e404c5ff54ec41d2a201305cd6594ed14a7529e9119fa7ca457e4bbd12a"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "5d0076e664e4303ba1617fd5339c68b9d3b3e3c815f66315c8af175d217d287d"
    sha256 cellar: :any_skip_relocation, monterey: "a1cbe8a307708b88e2e058e0122edafe69eeb8e3df8b49ab7ce034b851f7ca13"
    sha256 cellar: :any_skip_relocation, big_sur:  "3a47318365fe8321cc6b735ad93a040853d2d47ac9e4b73ee92e19a37bb389ed"
  end

  depends_on "msgpack"

  conf_order "05"
end
