require_relative "../lib/php_pecl_formula"

class PhpAT71Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.1.0.tgz"
  sha256 "4b4dca9d2d7f316486f55402f5a29bd976420f728ed731589c8bada973ec89e7"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "a4ee3f29cf2ed4aaa85ff7eb65b20352977f0630a1a1e9ff5813d5061080a42a" => :mojave
    sha256 "5d3e49acd451ee1f0e93ec8f2cfa23f21340074d0b10f2ab6a0ce79d9f346ecd" => :high_sierra
  end
end
