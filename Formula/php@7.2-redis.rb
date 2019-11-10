require_relative "../lib/php_pecl_formula"

class PhpAT72Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.1.0.tgz"
  sha256 "4b4dca9d2d7f316486f55402f5a29bd976420f728ed731589c8bada973ec89e7"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "e9f5367dc04c3f423a7bf69396bda05442b406b7459340fdccab427dd0894d8c" => :mojave
    sha256 "ff4d6be3d03f901de8a537f7bea219efa9becd6ba4e556f204f302276b7023cb" => :high_sierra
  end
end
