require_relative "../lib/php_pecl_formula"

class PhpAT74Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.10.1.tgz"
  sha256 "5cdaedb4d8a286343e6b3b99992d9fcb44a8fb69dd02aa5d7bc20eb2ea5e59d2"
  revision 1
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, ventura:  "cd4856a2bccab60aab3af524334c4cc271e77c9efa407ebc4f32ada808130d93"
    sha256 cellar: :any, monterey: "10c6cb628e3356ac07c7be06c0897483215bbb92961d8c48e98b8b0cfcb77e2f"
    sha256 cellar: :any, big_sur:  "6cca4f59e84d7a5bdeb47fd938380b0d8b56c33ab13c0989564a94e32ba553d1"
  end

  depends_on "unixodbc"
end
