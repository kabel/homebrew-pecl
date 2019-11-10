require_relative "../lib/php_pecl_formula"

class PhpAT71Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.1.0.tgz"
  sha256 "4b4dca9d2d7f316486f55402f5a29bd976420f728ed731589c8bada973ec89e7"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "5657fc50b8eb0a41fec1877a501b150641938f92f280d1146b4a7dcd8cd37ece" => :mojave
    sha256 "dea91628a9423ea1616fb491a4d18225ca5bb932634e02685a8c7173c4c161a2" => :high_sierra
  end
end
