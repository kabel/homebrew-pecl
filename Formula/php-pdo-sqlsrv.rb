require_relative "../lib/php_pecl_formula"

class PhpPdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.6.1.tgz"
  sha256 "caf4033677cc7b0992bd68ba1989a095e92150489efc98147445398763a0340a"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "41a1360fb6caf5159a258b59eb1fdc8d7fcc9dc59140011b203ac459666ae04b" => :mojave
    sha256 "1df4241a3fbcb0501d2fb719cfda212dfc14b473c6af26e195fa870c39a723bc" => :high_sierra
  end

  depends_on "unixodbc"
end
