require_relative "../lib/php_pecl_formula"

class PhpAT81PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.10.1.tgz"
  sha256 "c7854196a236bc83508a346f8c6ef1df999bc21eebbd838bdb0513215e0628ad"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "70b5cc61e232ff2482d8ad3c2941c640e97527bbb2b96dff2d8255a2418fdb48"
    sha256 cellar: :any, monterey: "ef3330d4821e70e4cfa0210b25738d4997c36d7b852b2de3ca8aa6604a79b110"
    sha256 cellar: :any, big_sur:  "4204ae08aaa4438bd2a7ae93332bdbddb0a6ddeeb7c329b213157660eebabc29"
  end

  depends_on "unixodbc"
end
