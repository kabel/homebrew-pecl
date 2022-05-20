require_relative "../lib/php_pecl_formula"

class PhpAT80Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.10.1.tgz"
  sha256 "5cdaedb4d8a286343e6b3b99992d9fcb44a8fb69dd02aa5d7bc20eb2ea5e59d2"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "bfa2d492f971cfff6097a7237356ece4f10da60dd3e07ec31cb439e78af78d96"
    sha256 cellar: :any, big_sur:  "ffd6f02ff4d5afb66d5e9387cdcdabd08bdaedc59a667b9eab930bd87e34ce43"
    sha256 cellar: :any, catalina: "b022c6a017d8fee16d46f5e4d523e4b1c84cc171ef32db73a9058715f120d8d5"
  end

  depends_on "unixodbc"
end
