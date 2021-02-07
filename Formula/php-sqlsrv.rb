require_relative "../lib/php_pecl_formula"

class PhpSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.9.0.tgz"
  sha256 "0a108e0408e8b984e5ae8bc52824ed32872d72e3a571cd2a5d2b63b200215ab3"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, catalina: "eae4632c6f5100965dde225ca4d205252d70748951eb588b81ad3bceb8e1c569"
    sha256 cellar: :any, mojave:   "2726cb97850e174b5f6ed409c75f85075d60d9334a4346061bfb480554482c5c"
  end

  depends_on "unixodbc"
end
