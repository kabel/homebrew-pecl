require_relative "../lib/php_pecl_formula"

class PhpAT73PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.8.1.tgz"
  sha256 "2047b6cb4e5d8592c8cc31df88b5f23654ed94f0c2f084b148403f4746276a19"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "19779f63142a2c2e4135a15504f948719d340eff3b78d74c5e8928684e6dab8b" => :catalina
    sha256 "ea1886ca5fbf4c25416fc35a5e207faa45f0e05d990a1110e804b46e64a1050e" => :mojave
  end

  depends_on "unixodbc"
end
