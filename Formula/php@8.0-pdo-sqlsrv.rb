require_relative "../lib/php_pecl_formula"

class PhpAT80PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.10.1.tgz"
  sha256 "c7854196a236bc83508a346f8c6ef1df999bc21eebbd838bdb0513215e0628ad"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "909d5220bb5255e0cdba596aaf6714f47007c6bbd8a04dc1d9759546536642cc"
    sha256 cellar: :any, big_sur:  "fc4b8df405f783c81f38eb29fd897e1a907c8ee22d8049aa57753ad6d0fe0763"
    sha256 cellar: :any, catalina: "cc90523d9b9f6c7455fe6fdd45d812b4afdf78a1b6153aa9ca2551b0681cff12"
  end

  depends_on "unixodbc"
end
