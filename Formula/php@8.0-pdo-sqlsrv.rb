require_relative "../lib/php_pecl_formula"

class PhpAT80PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.10.0.tgz"
  sha256 "0446bb8bff1e82fcfd993ebd765d1dc56715a3e754453f43ce8e9fe84765112a"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, big_sur:  "13b4559cca8f98980d67acd4e07bc816eeafcfa55f88e15203467bd66cecc637"
    sha256 cellar: :any, catalina: "08327d98a266d3b602a05af3ef861ff65efcf0e80e8bba53c57f633a27168aa4"
  end

  depends_on "unixodbc"
end
