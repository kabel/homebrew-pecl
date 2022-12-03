require_relative "../lib/php_pecl_formula"

class PhpAT80Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.4.tgz"
  sha256 "1474921b32c7eef825144e2be19b1e9d47505ad409729833fd50c25eacdf9577"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "6c074ba6b3afc399e4d9eb242f92f68fcddbd440a1167571d3740d79379d9376"
    sha256 cellar: :any_skip_relocation, monterey: "21eb4ce2bc3a81f9159735f2e9708b2191bdea633cd387427bf07a27cbaf84c0"
    sha256 cellar: :any_skip_relocation, big_sur:  "f08276d2200e95cc07c6dac09f587b5abd71cb3d6ec70a3501e40601da4a5345"
    sha256 cellar: :any_skip_relocation, catalina: "e7929cfacce03896fcb0992d670d9539f9f68ba9a618860b9ff9b5ef538ab474"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula
end
