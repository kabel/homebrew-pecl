require_relative "../lib/php_pecl_formula"

class PhpPdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.9.0beta2.tgz"
  sha256 "225be6b65b16b4953e139ae7f50aea910acb7c5148e2783b8bfe6e26fbe3f280"
  license "MIT"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
  end

  depends_on "unixodbc"
end
