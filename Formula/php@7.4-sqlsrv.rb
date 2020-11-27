require_relative "../lib/php_pecl_formula"

class PhpAT74Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.8.1.tgz"
  sha256 "39c5c07989d8b53e9ccdd79e8dc5eb6159632be89b1c01e23ea308c8e0332a31"
  license "MIT"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "c5025e8fb87f8931475fa8e0e3ff94b992b6c6b683952a9b6d63934a7079ff4f" => :catalina
    sha256 "2509deb0eef7e621ff9c79f39533dd8f0352f94d18ee98226689476ee3c445ab" => :mojave
  end

  depends_on "unixodbc"
end
