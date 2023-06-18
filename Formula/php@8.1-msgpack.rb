require_relative "../lib/php_pecl_formula"

class PhpAT81Msgpack < PhpPeclFormula
  extension_dsl "Interfacing with MessagePack"

  url "https://pecl.php.net/get/msgpack-2.2.0.tgz"
  sha256 "82aa1e404c5ff54ec41d2a201305cd6594ed14a7529e9119fa7ca457e4bbd12a"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "9e69d9eb42a86898552d02d291e4ff96b6427bb2efc0061cc7478c199a1a00de"
    sha256 cellar: :any_skip_relocation, monterey: "a91ba47ca5e963a18fc46a288b5249fb788a3c3b76c5c7aa1d23c4775c6ff224"
    sha256 cellar: :any_skip_relocation, big_sur:  "5d6b6033ffcf0844ef4aa1314672fe637fb2dcf02359f51d46f23bde7b9bc251"
  end

  depends_on "msgpack"

  conf_order "05"
end
