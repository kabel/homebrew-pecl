require_relative "../lib/php_pecl_formula"

class PhpAT73Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.9.0beta2.tgz"
  sha256 "48f9b0b6c37d7178bdfceaeb08e4ac308c8edb071dda20ac1219b0c960faaa75"
  license "MIT"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "34db16a0f0713254a9048cf4dc35735a04856fd388212960728f0222bc5b793d" => :catalina
    sha256 "5a0bd3d322542e626036892fbcd0d3605e90af7ea20d71e589989b490276824c" => :mojave
  end

  depends_on "unixodbc"
end
