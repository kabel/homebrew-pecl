require_relative "../lib/php_pecl_formula"

class PhpAT73Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.9.0.tgz"
  sha256 "0a108e0408e8b984e5ae8bc52824ed32872d72e3a571cd2a5d2b63b200215ab3"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, catalina: "754d111141282e3f512c8479f39cee1b44b5fa7c795f3c232790b94dcd577fb4"
    sha256 cellar: :any, mojave:   "6f4b235c187b53b89cb4f1e7550b7087f2df14c7f5268363eb58be62506c8bbb"
  end

  depends_on "unixodbc"
end
