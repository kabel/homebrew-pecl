require_relative "../lib/php_pecl_formula"

class PhpAT73Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.8.0.tgz"
  sha256 "dccadca621d14d98e3f0a2f31304f4c01396fce3af69b0528a19121e669e64cf"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "88fb8c61d56380541686e17be889ad162426aa56e2c521f94344fb5b4f967a0d" => :mojave
    sha256 "1cb101e87baeea1da2f1829b63c946fa282afc95606b9681a4e92dde3bd1ac23" => :high_sierra
  end

  depends_on "unixodbc"
end
