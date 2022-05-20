require_relative "../lib/php_pecl_formula"

class PhpAT80PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.10.1.tgz"
  sha256 "c7854196a236bc83508a346f8c6ef1df999bc21eebbd838bdb0513215e0628ad"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "0fefa84f0cb92177b010a40692dfbaf8c6d8182a443eb8352e2fc482bbd53c82"
    sha256 cellar: :any, big_sur:  "b410821e3a5bb73e8e3defc93539549f49bc961a71f1d46946c66329a7c69d97"
    sha256 cellar: :any, catalina: "8a2b3d835d78aa5d1284a0633b760d949ed8965a273538acdc635a2f77b6d12d"
  end

  depends_on "unixodbc"
end
