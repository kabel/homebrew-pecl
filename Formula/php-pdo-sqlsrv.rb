require_relative "../lib/php_pecl_formula"

class PhpPdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.9.0beta2.tgz"
  sha256 "225be6b65b16b4953e139ae7f50aea910acb7c5148e2783b8bfe6e26fbe3f280"
  license "MIT"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "dde9e5ea3d573727ccf0603d3e7f5b8fd30331f28885fae73401a20173f3c293" => :catalina
    sha256 "547d2165000823a477a8f1a90901183e29a5405ada572a6cd8a81952bee5ad86" => :mojave
  end

  depends_on "unixodbc"
end
