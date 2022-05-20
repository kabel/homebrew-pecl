require_relative "../lib/php_pecl_formula"

class PhpPdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.10.1.tgz"
  sha256 "c7854196a236bc83508a346f8c6ef1df999bc21eebbd838bdb0513215e0628ad"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "614f246599c075f01412efc55094b3daffa64f0b87896a6d53e3862339148aac"
    sha256 cellar: :any, big_sur:  "8a3d24dd70cd170ae60ba4f079626746f2383e9211ed63c1920f320dd74c72cf"
    sha256 cellar: :any, catalina: "de849f15660c8a04dd6ab3ed4dda31f376e38b8ac5b5e2ed6e1cbdc03bf27e16"
  end

  depends_on "unixodbc"
end
