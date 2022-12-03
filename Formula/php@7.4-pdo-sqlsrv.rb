require_relative "../lib/php_pecl_formula"

class PhpAT74PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.10.1.tgz"
  sha256 "c7854196a236bc83508a346f8c6ef1df999bc21eebbd838bdb0513215e0628ad"
  revision 1
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "354bdc8ebb3981aa77b6fd77b288dd65b4898035ef8d50e7952dfacf76654cff"
    sha256 cellar: :any, monterey: "24ff5fedfd154982cd1878daab2eb8c4ab728759eb24006a3120a9926db43614"
    sha256 cellar: :any, big_sur:  "7437daf17f50d54622712edb10f505113a6e869647556a9752c8145bda03c60f"
  end

  disable! date: "2022-11-28", because: :versioned_formula

  depends_on "unixodbc"
end
