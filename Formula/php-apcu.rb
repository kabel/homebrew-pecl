require_relative "../lib/php_pecl_formula"

class PhpApcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.22.tgz"
  sha256 "010a0d8fd112e1ed7a52a356191da3696a6b76319423f7b0dfdeaeeafcb41a1e"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "128a6650bb9a2085a28a67b11f105bbf6d5d5b780af4d99448bea43daec46ff4"
    sha256 cellar: :any_skip_relocation, monterey: "81d278effb3f9f1fea0bd4edebd6cb015abc677130990a6218d2a967333c6add"
    sha256 cellar: :any_skip_relocation, big_sur:  "2ff8d50a0ddebdc200daec68982e745281b4bdb76a1cc823f89f26dc636ed3b1"
    sha256 cellar: :any_skip_relocation, catalina: "620989ad8b2281f270b4e939bc49809e88ba515cc99f0ef09f672808e80c7ad6"
  end
end
