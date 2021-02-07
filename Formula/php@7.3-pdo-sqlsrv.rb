require_relative "../lib/php_pecl_formula"

class PhpAT73PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.9.0.tgz"
  sha256 "0fce417b33879fdae3d50cc1aa5b284ab12662147ea2206fa6e1fadde8b48c58"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any
    sha256 "1c1d1a6b4d59dc9288c173565cd29645cba24517297416e038383724ff8239b0" => :catalina
    sha256 "2ffccb4fe816e72ffbe1e43279f4dc8ea1252e4af9a4a00b542a25b4d1c0a2d5" => :mojave
  end

  depends_on "unixodbc"
end
