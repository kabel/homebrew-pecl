require_relative "../lib/php_pecl_formula"

class PhpSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.8.1.tgz"
  sha256 "39c5c07989d8b53e9ccdd79e8dc5eb6159632be89b1c01e23ea308c8e0332a31"
  lisence "MIT"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "233d3a04bb7deb9909cd94c3b218a105119b9eaa0766330ec6440522caf19a0c" => :catalina
    sha256 "ce7f7c268dbc481c846e473c4b776b4b75271c3fead7414769b8f10f7a62b8d1" => :mojave
  end

  depends_on "unixodbc"
end
