require_relative "../lib/php_pecl_formula"

class PhpPdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.8.1.tgz"
  sha256 "2047b6cb4e5d8592c8cc31df88b5f23654ed94f0c2f084b148403f4746276a19"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "ecbdfbdf8eba3d2a44de44e0c43c5d1ddd8e5aff4c31d83512cdf4a4a8366b65" => :catalina
    sha256 "b6441883ae96d73f4e44244263f139513fe189d6fd95da684763a1efab888533" => :mojave
  end

  depends_on "unixodbc"
end
