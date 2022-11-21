require_relative "../lib/php_pecl_formula"

class PhpAT74PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.10.1.tgz"
  sha256 "c7854196a236bc83508a346f8c6ef1df999bc21eebbd838bdb0513215e0628ad"
  revision 1
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "23ecdff38d5fd9cc9222438d742358c7e43d16e786aa86eb42574bd949a3f831"
    sha256 cellar: :any, big_sur:  "4e2a040859c5a15ce2770a1a6f3f59797feab1ea14d5ceeae7a4f58c2b8dc7d4"
    sha256 cellar: :any, catalina: "93893b40ba27e2cfec070a3a8fac3c44253517e2eb9dce066eb7d3c4614f2a01"
  end

  depends_on "unixodbc"
end
