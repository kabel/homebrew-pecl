require_relative "../lib/php_pecl_formula"

class PhpPdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.10.0.tgz"
  sha256 "0446bb8bff1e82fcfd993ebd765d1dc56715a3e754453f43ce8e9fe84765112a"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, big_sur:  "8a3d24dd70cd170ae60ba4f079626746f2383e9211ed63c1920f320dd74c72cf"
    sha256 cellar: :any, catalina: "de849f15660c8a04dd6ab3ed4dda31f376e38b8ac5b5e2ed6e1cbdc03bf27e16"
  end

  depends_on "unixodbc"
end
