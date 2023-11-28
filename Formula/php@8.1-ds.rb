require_relative "../lib/php_pecl_formula"

class PhpAT81Ds < PhpPeclFormula
  extension_dsl "Data Structures for PHP"

  url "https://pecl.php.net/get/ds-1.4.0.tgz"
  sha256 "a9b930582de8054e2b1a3502bec9d9e064941b5b9b217acc31e4b47f442b93ef"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "ead73a40c8d6d06a1eaef4cc171409584a24609ce4510bf3f18d88e6ca153eff"
    sha256 cellar: :any_skip_relocation, ventura:  "2d02da682848202e4fc76c46861a9e49c1bafe5240c2f51bad62efeab98034d1"
    sha256 cellar: :any_skip_relocation, monterey: "8f77444b9e24d40d483bad7ee5d38f9d7438899ca056735d12a2e25cf4c5356b"
    sha256 cellar: :any_skip_relocation, big_sur:  "a4a2c1f15e94cbdbd8943360aa9c81fef7d26f844a7544cfa0c91702d7fb7298"
  end

  deprecate! date: "2024-11-25", because: :unsupported
end
