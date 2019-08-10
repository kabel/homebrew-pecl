require_relative "../lib/php_pecl_formula"

class PhpAT71Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.6.1.tgz"
  sha256 "0ab48ae7a9957586f5ec3ea1c19c528951517529078679a0dc3fd9fe83305445"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "e4ec66cf723d35a1ff4b2b08132ba194f41564ae7f088e65639ddc6b10e92a32" => :mojave
    sha256 "e1b420dd201c6900de84838e2e37e14f692092a6f9ac33100e134c0a7d646ff9" => :high_sierra
  end

  depends_on "unixodbc"
end
