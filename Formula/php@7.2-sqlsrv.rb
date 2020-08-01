require_relative "../lib/php_pecl_formula"

class PhpAT72Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.8.1.tgz"
  sha256 "39c5c07989d8b53e9ccdd79e8dc5eb6159632be89b1c01e23ea308c8e0332a31"
  lisence "MIT"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "43e96dff6538d3fb3340c1aa718b5bdb32e7e80fa8b86492de62fb9d95f3e06a" => :catalina
    sha256 "c47a2de4c2f691a571a63cb02d41375c541f56b1b0f993cb9dd2301a7ad15992" => :mojave
  end

  depends_on "unixodbc"
end
