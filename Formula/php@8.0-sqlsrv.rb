require_relative "../lib/php_pecl_formula"

class PhpAT80Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.10.0.tgz"
  sha256 "76b3f083a1a8f103581c21ba3a46d6ca257beae6728cd158a64a46ab59a226b4"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "bfa2d492f971cfff6097a7237356ece4f10da60dd3e07ec31cb439e78af78d96"
    sha256 cellar: :any, big_sur:  "ffd6f02ff4d5afb66d5e9387cdcdabd08bdaedc59a667b9eab930bd87e34ce43"
    sha256 cellar: :any, catalina: "b022c6a017d8fee16d46f5e4d523e4b1c84cc171ef32db73a9058715f120d8d5"
  end

  depends_on "unixodbc"
end
