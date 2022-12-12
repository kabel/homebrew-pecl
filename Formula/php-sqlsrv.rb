require_relative "../lib/php_pecl_formula"

class PhpSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.10.1.tgz"
  sha256 "5cdaedb4d8a286343e6b3b99992d9fcb44a8fb69dd02aa5d7bc20eb2ea5e59d2"
  revision 2
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "9ea8ff806fe8d402171eb5f1c53620d063cae8d0cc0403dfad15c37162e5fbea"
    sha256 cellar: :any, monterey: "7bb51f0add7837f012aeec5710566fa1064d9006ed3013a5413782f95dfb9f59"
    sha256 cellar: :any, big_sur:  "4fe68816ea780f71a0ef7ef1a2bb5ecddf620da5066da03c7a1a4e81783f5513"
  end

  depends_on "unixodbc"
end
