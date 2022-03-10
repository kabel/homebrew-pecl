require_relative "../lib/php_pecl_formula"

class PhpAT74PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.10.0.tgz"
  sha256 "0446bb8bff1e82fcfd993ebd765d1dc56715a3e754453f43ce8e9fe84765112a"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, big_sur:  "61bf1fa37a79e3893cac8cc73e6d473c32c4326f7e07228b0ae5ccdefaecbb88"
    sha256 cellar: :any, catalina: "177b046fffdd4ff23e588210fdf2cb57d6333ed4e706a6d9c46fab78746af47d"
  end

  depends_on "unixodbc"
end
