require_relative "../lib/php_pecl_formula"

class PhpAT81PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.11.0.tgz"
  sha256 "c307d9bcada02bdc21f59b9f099031b90b30727757bca50fd42fd36159812e8a"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "304f1c3ce4573affdbe8a86d003a740ef85da350a321518451db7a457c91552f"
    sha256 cellar: :any, monterey: "abbf857f237f997f177fa612d165e8a29a2525cb60bd6cbe9745b463ca73812a"
    sha256 cellar: :any, big_sur:  "6d665c141071b4123f1fcd1fa5b4f4a2707c740e69a8dc8dc11581e3a68c83da"
  end

  depends_on "unixodbc"
end
