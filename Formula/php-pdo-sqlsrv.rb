require_relative "../lib/php_pecl_formula"

class PhpPdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.10.1.tgz"
  sha256 "c7854196a236bc83508a346f8c6ef1df999bc21eebbd838bdb0513215e0628ad"
  revision 2
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "ab2c31b557e87edf70ee02aa46a8325b939489c9cc386efede4196db2c40101c"
    sha256 cellar: :any, monterey: "8da97b73e74ae9145a3062639ca80833349bd031ec4ca8d8bb396adc5e433eba"
    sha256 cellar: :any, big_sur:  "90cb5ec8f0ea94fc10e1093040399d883001a9b56f3ff8937c6d1162bcb6aa0f"
  end

  depends_on "unixodbc"
end
