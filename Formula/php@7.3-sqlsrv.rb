require_relative "../lib/php_pecl_formula"

class PhpAT73Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.8.0.tgz"
  sha256 "dccadca621d14d98e3f0a2f31304f4c01396fce3af69b0528a19121e669e64cf"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "857e0b6ed18490903353070d95478bd62982432b8621522a2636930848a58e2c" => :mojave
    sha256 "2ed2f68c04f5d3443e4dced1165db0f05be5e1561cf9ae3e644946eaffb685ef" => :high_sierra
  end

  depends_on "unixodbc"
end
