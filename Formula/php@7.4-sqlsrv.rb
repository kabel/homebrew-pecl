require_relative "../lib/php_pecl_formula"

class PhpAT74Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.9.0.tgz"
  sha256 "0a108e0408e8b984e5ae8bc52824ed32872d72e3a571cd2a5d2b63b200215ab3"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, catalina: "0278df600e400f415d07fe5a3a26bd44a4d369bcda999e5d0ccc62881acddb8a"
    sha256 cellar: :any, mojave:   "d0e8098b6cb43e9d8d82e2acebe9c1893106b3894d8603f01e0dbcc08735bc7a"
  end

  depends_on "unixodbc"
end
