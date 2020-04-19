require_relative "../lib/php_pecl_formula"

class PhpAT72PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.8.1.tgz"
  sha256 "2047b6cb4e5d8592c8cc31df88b5f23654ed94f0c2f084b148403f4746276a19"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "aa0681350b0cc1bc7f0c472c99a9ce1eab73f3cf8f43e77b2febab09a8fb888a" => :catalina
    sha256 "0a8ccf5fdfa75a09f1a7090a7997438f776e6df097b9d0ecc7570f89993d63a0" => :mojave
  end

  depends_on "unixodbc"
end
