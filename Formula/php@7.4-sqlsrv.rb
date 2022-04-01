require_relative "../lib/php_pecl_formula"

class PhpAT74Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.10.0.tgz"
  sha256 "76b3f083a1a8f103581c21ba3a46d6ca257beae6728cd158a64a46ab59a226b4"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "de3b9e1867c6bd9ef74ff4e43a84c36a1bd9c40d38f0eb218133488b1c4514d4"
    sha256 cellar: :any, big_sur:  "4b6eef771fc7ff1a6de671dedbf0381e4c61f3180541bd827283df3f73f0ba3d"
    sha256 cellar: :any, catalina: "19b2bc6828cb83521bb756dd33b750e5904a968e55ae98425a04e164eb5c9b51"
  end

  depends_on "unixodbc"
end
