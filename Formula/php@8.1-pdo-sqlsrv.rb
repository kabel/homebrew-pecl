require_relative "../lib/php_pecl_formula"

class PhpAT81PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.11.1.tgz"
  sha256 "549855a992a1363e4edef7b31be6ab0f9cd6dd9cc446657857750065eae6af89"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "304f1c3ce4573affdbe8a86d003a740ef85da350a321518451db7a457c91552f"
    sha256 cellar: :any, monterey: "abbf857f237f997f177fa612d165e8a29a2525cb60bd6cbe9745b463ca73812a"
    sha256 cellar: :any, big_sur:  "6d665c141071b4123f1fcd1fa5b4f4a2707c740e69a8dc8dc11581e3a68c83da"
  end

  deprecate! date: "2024-11-25", because: :unsupported

  depends_on "unixodbc"
end
