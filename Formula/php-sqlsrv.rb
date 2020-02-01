require_relative "../lib/php_pecl_formula"

class PhpSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.8.0.tgz"
  sha256 "dccadca621d14d98e3f0a2f31304f4c01396fce3af69b0528a19121e669e64cf"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "77f08e2fdce1dc2f8cf855271bc70ac170bf960e49213288e745cc4e2cc26e40" => :mojave
    sha256 "b49c14625649b3f2acb2c79d76d7a0e446765661a8465aeea73a0791e061023f" => :high_sierra
  end

  depends_on "unixodbc"
end
