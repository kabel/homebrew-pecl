require_relative "../lib/php_pecl_formula"

class PhpAT73PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.9.0beta2.tgz"
  sha256 "225be6b65b16b4953e139ae7f50aea910acb7c5148e2783b8bfe6e26fbe3f280"
  license "MIT"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "19779f63142a2c2e4135a15504f948719d340eff3b78d74c5e8928684e6dab8b" => :catalina
    sha256 "ea1886ca5fbf4c25416fc35a5e207faa45f0e05d990a1110e804b46e64a1050e" => :mojave
  end

  depends_on "unixodbc"
end
