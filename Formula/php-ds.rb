require_relative "../lib/php_pecl_formula"

class PhpDs < PhpPeclFormula
  extension_dsl "Data Structures for PHP"

  url "https://pecl.php.net/get/ds-1.4.0.tgz"
  sha256 "a9b930582de8054e2b1a3502bec9d9e064941b5b9b217acc31e4b47f442b93ef"
  revision 2
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "4c046d2e8773d49d26b846344fabfea329137eab9e6717a06807524a283d6ad2"
    sha256 cellar: :any_skip_relocation, monterey: "11a71a34cd22dcf97f535c6ff986d566f172914946944484cc23bb4fa26af638"
    sha256 cellar: :any_skip_relocation, big_sur:  "374546b57f1573a1bb71a7b7caa851e85a447e08b2e7ddc845746e95ee117aab"
  end
end
