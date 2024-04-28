require_relative "../lib/php_pecl_formula"

class PhpAT80Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.11.1.tgz"
  sha256 "678ab60174be56b09c6916307700e716a4ff266ad53e43990a9d9740d4728463"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "2b5420a0b4dd19b3f33d07989079c80ac5cb1e328db3fec24bc41f58cc183f77"
    sha256 cellar: :any, ventura:  "ee0cb42d452162ffb2620b3fa16326cce9e3fa186485a859ada56179c17e39c0"
    sha256 cellar: :any, monterey: "b9a4326fc1cb27b808f8f579142552ecad464af8cbf0e502d37bbb858f7dac33"
  end

  deprecate! date: "2023-11-26", because: :unsupported

  depends_on "unixodbc"
end
