require_relative "../lib/php_pecl_formula"

class PhpAT73PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.9.0beta2.tgz"
  sha256 "225be6b65b16b4953e139ae7f50aea910acb7c5148e2783b8bfe6e26fbe3f280"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any
    sha256 "1c1d1a6b4d59dc9288c173565cd29645cba24517297416e038383724ff8239b0" => :catalina
    sha256 "2ffccb4fe816e72ffbe1e43279f4dc8ea1252e4af9a4a00b542a25b4d1c0a2d5" => :mojave
  end

  depends_on "unixodbc"
end
