require_relative "../lib/php_pecl_formula"

class PhpPdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.9.0.tgz"
  sha256 "0fce417b33879fdae3d50cc1aa5b284ab12662147ea2206fa6e1fadde8b48c58"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any
    sha256 "dde9e5ea3d573727ccf0603d3e7f5b8fd30331f28885fae73401a20173f3c293" => :catalina
    sha256 "547d2165000823a477a8f1a90901183e29a5405ada572a6cd8a81952bee5ad86" => :mojave
  end

  depends_on "unixodbc"
end
