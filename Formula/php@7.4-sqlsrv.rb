require_relative "../lib/php_pecl_formula"

class PhpAT74Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.10.0.tgz"
  sha256 "76b3f083a1a8f103581c21ba3a46d6ca257beae6728cd158a64a46ab59a226b4"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, catalina: "0278df600e400f415d07fe5a3a26bd44a4d369bcda999e5d0ccc62881acddb8a"
    sha256 cellar: :any, mojave:   "d0e8098b6cb43e9d8d82e2acebe9c1893106b3894d8603f01e0dbcc08735bc7a"
  end

  depends_on "unixodbc"
end
