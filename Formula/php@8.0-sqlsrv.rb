require_relative "../lib/php_pecl_formula"

class PhpAT80Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.10.1.tgz"
  sha256 "5cdaedb4d8a286343e6b3b99992d9fcb44a8fb69dd02aa5d7bc20eb2ea5e59d2"
  revision 1
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "812f97b7e727dea0fb728219da8214e137f4f06234c3d4e6cd65bcd897c15a98"
    sha256 cellar: :any, monterey: "0b1a96b1eaaccabbc67863ff3ef35cf68c15f54ee22560ee267453e1e12e79f3"
    sha256 cellar: :any, big_sur:  "6f38462f6d1ba5102ab7df56aa5f8bbd9c0c6315ed3250b3377cc91866ea7b83"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  depends_on "unixodbc"
end
