require_relative "../lib/php_pecl_formula"

class PhpSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.8.0.tgz"
  sha256 "dccadca621d14d98e3f0a2f31304f4c01396fce3af69b0528a19121e669e64cf"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "4a1e187b72a1394c05bc6b5a63cf2160a6515f01dc6a8fd5645619c3bb2cb3c7" => :mojave
    sha256 "570fd38a09ca90635b7a6bfafbf7e14a72f2867f91438e45d7190b31bacd13cc" => :high_sierra
  end

  depends_on "unixodbc"
end
