require_relative "../lib/php_pecl_formula"

class PhpAT81Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.11.0.tgz"
  sha256 "6e437af4db730ab995c597f960e98bac060fc220a8d51ee24877eb7f39090a09"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "917af1c9024d8659f0d3843e07faa671ac456e10a9f8f5b49d58834c3cb321c2"
    sha256 cellar: :any, monterey: "f4d0c37a881ff2b84e26af60d7dbdd4d18dbe179afae077d9bb90707fa1473fc"
    sha256 cellar: :any, big_sur:  "35dfb94f76a6a14f3efaf1305ec0b6810ccc51ac1712ce88d351db07d255dfc9"
  end

  depends_on "unixodbc"
end
