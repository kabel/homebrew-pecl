require_relative "../lib/php_pecl_formula"

class PhpAT72Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.8.0.tgz"
  sha256 "dccadca621d14d98e3f0a2f31304f4c01396fce3af69b0528a19121e669e64cf"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "d70903d87faa075194b62be6af7ee2206db3ac11bdb3aa64e5895d6810a64ec4" => :mojave
    sha256 "6cf3f7896df1aff86f6d7f3e6cc3fd0761630316caf4773ece22fc0cc394685e" => :high_sierra
  end

  depends_on "unixodbc"
end
