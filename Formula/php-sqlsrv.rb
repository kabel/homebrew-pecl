require_relative "../lib/php_pecl_formula"

class PhpSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.9.0.tgz"
  sha256 "0a108e0408e8b984e5ae8bc52824ed32872d72e3a571cd2a5d2b63b200215ab3"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any
    sha256 "1678d8633fe12f2c5325f8aaa276181454358d4d76851fe1df004e88dbad3ec6" => :catalina
    sha256 "63fb68baa9304a10af7fbcad0feca0c0b9ac746405eb332d65f1e13c608b730e" => :mojave
  end

  depends_on "unixodbc"
end
