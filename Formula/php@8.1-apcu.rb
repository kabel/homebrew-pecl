require_relative "../lib/php_pecl_formula"

class PhpAT81Apcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.22.tgz"
  sha256 "010a0d8fd112e1ed7a52a356191da3696a6b76319423f7b0dfdeaeeafcb41a1e"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "8eebe9dcacd47a10e47becd55a6b977ed562fcefee66087897907862a07f17ce"
    sha256 cellar: :any_skip_relocation, monterey: "22c7170caae7bdbd84bd807e08775b31fdd90cb08ee7e1bd76e7329c76f563f4"
    sha256 cellar: :any_skip_relocation, big_sur:  "d2a10e012ab588f7c1e0293ba112918bcb3136789ceb9e3865f906f278b9d0fc"
  end

  deprecate! date: "2024-11-25", because: :unsupported
end
