require_relative "../lib/php_pecl_formula"

class PhpAT74PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.9.0.tgz"
  sha256 "0fce417b33879fdae3d50cc1aa5b284ab12662147ea2206fa6e1fadde8b48c58"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, catalina: "ffb6a71b918b07e04b0790742113c97f2b233cc13cfc0f7ca0465b6ed5def44a"
    sha256 cellar: :any, mojave:   "b6460f4b1590b4d3c978087fc2db40c3b0fc0f4d2737cb60f237ff4d998bf587"
  end

  depends_on "unixodbc"
end
