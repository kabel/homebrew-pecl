require_relative "../lib/php_pecl_formula"

class PhpAT73Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.7.1preview.tgz"
  sha256 "dd37520cd9d5e56b9d446e3ccc7e831fba409177a187e69448a5a99865761c76"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "88fb8c61d56380541686e17be889ad162426aa56e2c521f94344fb5b4f967a0d" => :mojave
    sha256 "1cb101e87baeea1da2f1829b63c946fa282afc95606b9681a4e92dde3bd1ac23" => :high_sierra
  end

  depends_on "unixodbc"

  def source_dir
    "sqlsrv-5.7.1preview"
  end
end
