require_relative "../lib/php_pecl_formula"

class PhpSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.9.0beta2.tgz"
  sha256 "48f9b0b6c37d7178bdfceaeb08e4ac308c8edb071dda20ac1219b0c960faaa75"
  license "MIT"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
  end

  depends_on "unixodbc"
end
