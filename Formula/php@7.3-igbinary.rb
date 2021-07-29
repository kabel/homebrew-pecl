require_relative "../lib/php_pecl_formula"

class PhpAT73Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.4.tgz"
  sha256 "c39147f1548b7d9883468e9d12be6cae84466e09baa24199e4e7a66993ef60bb"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "a7516a9afa52a248f563e0f2623900d3777242f2e9f85f7aaeb24c5dcadfdeb5"
    sha256 cellar: :any_skip_relocation, catalina: "bf7cea23c2b93ce8decc6f49a42bb753288e1a60bcd48ad5048deac908699521"
    sha256 cellar: :any_skip_relocation, mojave:   "c7c82a3b30c2ad1bef9b965f912138d5bcb055697d3d1f73222f4af9140dfd58"
  end
end
