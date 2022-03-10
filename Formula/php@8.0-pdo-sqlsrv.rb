require_relative "../lib/php_pecl_formula"

class PhpAT80PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.10.0.tgz"
  sha256 "0446bb8bff1e82fcfd993ebd765d1dc56715a3e754453f43ce8e9fe84765112a"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, big_sur:  "b410821e3a5bb73e8e3defc93539549f49bc961a71f1d46946c66329a7c69d97"
    sha256 cellar: :any, catalina: "8a2b3d835d78aa5d1284a0633b760d949ed8965a273538acdc635a2f77b6d12d"
  end

  depends_on "unixodbc"
end
