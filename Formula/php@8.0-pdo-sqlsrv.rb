require_relative "../lib/php_pecl_formula"

class PhpAT80PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.10.1.tgz"
  sha256 "c7854196a236bc83508a346f8c6ef1df999bc21eebbd838bdb0513215e0628ad"
  revision 1
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "6620c31f2ad701ba4f80552d64716f53aa86defe2298218457b899cce90d3b02"
    sha256 cellar: :any, monterey: "31c8718f80318e8d36c117e2324f38e78a5e091191fd663cd1820a322aa591d2"
    sha256 cellar: :any, big_sur:  "1f29dbae6b180251c48c5356577c06500bca04e53b1b676d726ad1ce4ca9a40d"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  depends_on "unixodbc"
end
