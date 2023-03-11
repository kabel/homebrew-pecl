require_relative "../lib/php_pecl_formula"

class PhpAT81Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.11.0.tgz"
  sha256 "6e437af4db730ab995c597f960e98bac060fc220a8d51ee24877eb7f39090a09"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "80f4def2a0afc587ebacab2c77a413828fe2332559b869468002defdfa76c1b7"
    sha256 cellar: :any, monterey: "5683396b569e3f7e4927715b81fbb6ecfcf94a4228b03b6267a65d516e7c80df"
    sha256 cellar: :any, big_sur:  "e1462153eeb868bd693c80b2e20084ae1983ea12633213aa1b4bf1a742233fc5"
  end

  depends_on "unixodbc"
end
