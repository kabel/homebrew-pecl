require_relative "../lib/php_pecl_formula"

class PhpAT80Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.10.1.tgz"
  sha256 "5cdaedb4d8a286343e6b3b99992d9fcb44a8fb69dd02aa5d7bc20eb2ea5e59d2"
  revision 1
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "1837731ee02e0f8b4c851d6dba60e9d6fa6ab217e581c0d17273b68a180492c1"
    sha256 cellar: :any, big_sur:  "92f5b276219a4d1fa60fe48e609683298bd7e8a0d2febb576f7bf07d7b0abeb3"
    sha256 cellar: :any, catalina: "de52a02dc24681feb75218573e9f00933657df46dc6c660b5057550e8b801ffd"
  end

  depends_on "unixodbc"
end
