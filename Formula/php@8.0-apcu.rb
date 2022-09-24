require_relative "../lib/php_pecl_formula"

class PhpAT80Apcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.22.tgz"
  sha256 "010a0d8fd112e1ed7a52a356191da3696a6b76319423f7b0dfdeaeeafcb41a1e"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "bf2c02885b0f03ca03729a671827913de5dd5d60be3b26a072745bc458d3c78d"
    sha256 cellar: :any_skip_relocation, big_sur:  "caf9f0b9ffcb1a11d7d174ed0c04ad20653743ad33ae7561aa073f5f577b69f8"
    sha256 cellar: :any_skip_relocation, catalina: "41242e2312854d7e06952e7861b4d9e1e97d7e83372f175cea90d553344488f1"
  end
end
