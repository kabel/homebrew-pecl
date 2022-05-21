require_relative "../lib/php_pecl_formula"

class PhpPdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.10.1.tgz"
  sha256 "c7854196a236bc83508a346f8c6ef1df999bc21eebbd838bdb0513215e0628ad"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "65f4e1d5aba992ccbfb0af6605fd6555d0ac287a2045fb6e0d6e71dcd9f90577"
    sha256 cellar: :any, big_sur:  "09eaeb1677e94bb23c477d654b9d2c77f6eb81c597d380edafb46e615a04ad5a"
    sha256 cellar: :any, catalina: "f81cb0649af60f9ffd3260e2a2e9fa62a9d71cb777451addd895865b9f802a07"
  end

  depends_on "unixodbc"
end
