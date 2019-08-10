require_relative "../lib/php_pecl_formula"

class PhpAT71PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.6.1.tgz"
  sha256 "caf4033677cc7b0992bd68ba1989a095e92150489efc98147445398763a0340a"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "9ede580f3f0bfbd4eb7520a3cdcf5e3b3a0de09e293c99d938375d084a09fbdc" => :mojave
    sha256 "2a68e5db6521fc6ac02a91f83ff1cf93866cd380a87032af64a84d85228bcf38" => :high_sierra
  end

  depends_on "unixodbc"
end
