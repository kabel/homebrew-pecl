require_relative "../lib/php_pecl_formula"

class PhpPdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.9.0.tgz"
  sha256 "0fce417b33879fdae3d50cc1aa5b284ab12662147ea2206fa6e1fadde8b48c58"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, catalina: "4a5637cac285cf0adec5825526863829090173c41836e81494968d0bd8dc147b"
    sha256 cellar: :any, mojave:   "6f920e2829ba9c6a958703d45dec68362d6188859c4d7bf1f0d272555fbac842"
  end

  depends_on "unixodbc"
end
