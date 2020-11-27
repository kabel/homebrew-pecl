require_relative "../lib/php_pecl_formula"

class PhpAT74PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.8.1.tgz"
  sha256 "2047b6cb4e5d8592c8cc31df88b5f23654ed94f0c2f084b148403f4746276a19"
  license "MIT"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "55d5cf27f71b51006ffc7e9340ff4d8a353b4055beff598afac9b5fbd62a56e7" => :catalina
    sha256 "bd96bb2af9e697b2b854c9990eca7e3f42c86b6c893cfd4e4d82258ebcda365d" => :mojave
  end

  depends_on "unixodbc"
end
