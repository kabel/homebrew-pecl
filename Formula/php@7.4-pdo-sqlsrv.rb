require_relative "../lib/php_pecl_formula"

class PhpAT74PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.9.0.tgz"
  sha256 "0fce417b33879fdae3d50cc1aa5b284ab12662147ea2206fa6e1fadde8b48c58"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any
    sha256 "ba828c13412c7965f500117f388aabcb560c09beaed0c536a7071b19b3b2b432" => :catalina
    sha256 "7c9d585b9232b14854f798cf76af997b087dfdff3b8d1a25596a9fa684214a31" => :mojave
  end

  depends_on "unixodbc"
end
