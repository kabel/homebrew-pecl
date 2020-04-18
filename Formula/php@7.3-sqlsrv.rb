require_relative "../lib/php_pecl_formula"

class PhpAT73Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.8.1.tgz"
  sha256 "39c5c07989d8b53e9ccdd79e8dc5eb6159632be89b1c01e23ea308c8e0332a31"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "857e0b6ed18490903353070d95478bd62982432b8621522a2636930848a58e2c" => :mojave
    sha256 "2ed2f68c04f5d3443e4dced1165db0f05be5e1561cf9ae3e644946eaffb685ef" => :high_sierra
  end

  depends_on "unixodbc"
end
