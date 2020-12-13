require_relative "../lib/php_pecl_formula"

class PhpAT74Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.9.0beta2.tgz"
  sha256 "48f9b0b6c37d7178bdfceaeb08e4ac308c8edb071dda20ac1219b0c960faaa75"
  license "MIT"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "2a28e0602583e54c0a0e67e7f4e89082aed3d454079fb664f1bccb9dcf50265a" => :catalina
    sha256 "1531bbd4010ba6da69044b7b6c582ee9b106919ba913c9d3ed9431ebf01d9c62" => :mojave
  end

  depends_on "unixodbc"
end
