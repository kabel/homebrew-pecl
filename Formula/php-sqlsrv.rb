require_relative "../lib/php_pecl_formula"

class PhpSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.10.1.tgz"
  sha256 "5cdaedb4d8a286343e6b3b99992d9fcb44a8fb69dd02aa5d7bc20eb2ea5e59d2"
  revision 1
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, ventura:  "029c9888a22ef9209fc38939fe51da8b6b4bce8f134643f6bafa05846e6c7914"
    sha256 cellar: :any, monterey: "4500bee4e272458bd17769f5231eb94fd3af671c4a5126902ac8d35e077e363c"
    sha256 cellar: :any, big_sur:  "f8b463012061333a3af847df0b0ff08d83cbc6df91c5eff6a8d81c845e895c9b"
  end

  depends_on "unixodbc"
end
