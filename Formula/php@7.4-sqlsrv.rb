require_relative "../lib/php_pecl_formula"

class PhpAT74Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.9.0beta2.tgz"
  sha256 "48f9b0b6c37d7178bdfceaeb08e4ac308c8edb071dda20ac1219b0c960faaa75"
  license "MIT"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "c5025e8fb87f8931475fa8e0e3ff94b992b6c6b683952a9b6d63934a7079ff4f" => :catalina
    sha256 "2509deb0eef7e621ff9c79f39533dd8f0352f94d18ee98226689476ee3c445ab" => :mojave
  end

  depends_on "unixodbc"
end
