require_relative "../lib/php_pecl_formula"

class PhpAT73Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.9.0.tgz"
  sha256 "0a108e0408e8b984e5ae8bc52824ed32872d72e3a571cd2a5d2b63b200215ab3"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any
    sha256 "8e7ddea4d3f8b2eb95e0cd5a5d6a6a0626900b0085654470f2ebcc06194cf0e2" => :catalina
    sha256 "bd332e9716b231bbe0930d8d216c1eab88a5a802c38defeea8488bf163b7b44c" => :mojave
  end

  depends_on "unixodbc"
end
