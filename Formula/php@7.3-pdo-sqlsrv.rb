require_relative "../lib/php_pecl_formula"

class PhpAT73PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.9.0.tgz"
  sha256 "0fce417b33879fdae3d50cc1aa5b284ab12662147ea2206fa6e1fadde8b48c58"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, catalina: "a1a0bf91f3cb8848337e97965df3aa5eaf9e7687ed06465d69941fc430be7457"
    sha256 cellar: :any, mojave:   "84d1bd0390abcb1ae07f70e30e9355e18d60147eae8be8586590c99336f6b12b"
  end

  disable! date: "2021-12-06", because: :versioned_formula

  depends_on "unixodbc"
end
