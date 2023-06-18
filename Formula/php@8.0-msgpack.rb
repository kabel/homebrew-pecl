require_relative "../lib/php_pecl_formula"

class PhpAT80Msgpack < PhpPeclFormula
  extension_dsl "Interfacing with MessagePack"

  url "https://pecl.php.net/get/msgpack-2.2.0.tgz"
  sha256 "82aa1e404c5ff54ec41d2a201305cd6594ed14a7529e9119fa7ca457e4bbd12a"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "e2f79427e854b6b635add45dfb8a9bf8c9cfe09fb4ccce1974bd61bf022deaf8"
    sha256 cellar: :any_skip_relocation, monterey: "3135f7a63d006ef65460d890cec15b2dbbb4d3ee7d608e33cc70ffacd6600688"
    sha256 cellar: :any_skip_relocation, big_sur:  "7ea09eb551ef504f01a026781201626a78be719968c5730e470dd7242da3ada6"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  depends_on "msgpack"

  conf_order "05"
end
