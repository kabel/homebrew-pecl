require_relative "../lib/php_pecl_formula"

class PhpSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.8.1.tgz"
  sha256 "39c5c07989d8b53e9ccdd79e8dc5eb6159632be89b1c01e23ea308c8e0332a31"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "4a1e187b72a1394c05bc6b5a63cf2160a6515f01dc6a8fd5645619c3bb2cb3c7" => :mojave
    sha256 "570fd38a09ca90635b7a6bfafbf7e14a72f2867f91438e45d7190b31bacd13cc" => :high_sierra
  end

  depends_on "unixodbc"
end
