require_relative "../lib/php_pecl_formula"

class PhpAT81Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.10.1.tgz"
  sha256 "5cdaedb4d8a286343e6b3b99992d9fcb44a8fb69dd02aa5d7bc20eb2ea5e59d2"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "917af1c9024d8659f0d3843e07faa671ac456e10a9f8f5b49d58834c3cb321c2"
    sha256 cellar: :any, monterey: "f4d0c37a881ff2b84e26af60d7dbdd4d18dbe179afae077d9bb90707fa1473fc"
    sha256 cellar: :any, big_sur:  "35dfb94f76a6a14f3efaf1305ec0b6810ccc51ac1712ce88d351db07d255dfc9"
  end

  depends_on "unixodbc"
end
