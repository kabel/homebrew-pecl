require_relative "../lib/php_pecl_formula"

class PhpAT74Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.10.1.tgz"
  sha256 "5cdaedb4d8a286343e6b3b99992d9fcb44a8fb69dd02aa5d7bc20eb2ea5e59d2"
  revision 1
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "59b5fb9fda3930232ce34013bcb2a0c6a9197226384f03ee7a2f27e32eba78f3"
    sha256 cellar: :any, big_sur:  "12c617b8c9110e5e9217049ac3c53b213a3eef75fe8db2f18ff3e1aabdbdf438"
    sha256 cellar: :any, catalina: "42e555a3de847a46df7039a4334fa6b2ee1d7b20e6bba2e764c4a1a8a7d8713b"
  end

  depends_on "unixodbc"
end
