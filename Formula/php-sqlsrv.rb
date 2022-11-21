require_relative "../lib/php_pecl_formula"

class PhpSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.10.1.tgz"
  sha256 "5cdaedb4d8a286343e6b3b99992d9fcb44a8fb69dd02aa5d7bc20eb2ea5e59d2"
  revision 1
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "464c526d883af662cf4b3ad4dc7432165e374a7771961a11567f38a4e5c345a9"
    sha256 cellar: :any, big_sur:  "81b91a4e9a7a653cf579bc72eb89aada88bd84cce714061be57704ccdb514618"
    sha256 cellar: :any, catalina: "dd58cdbd04bd227f4599abea342ff9588ade2a350ea6d0fddd914d78ebff6982"
  end

  depends_on "unixodbc"
end
