require_relative "../lib/php_pecl_formula"

class PhpAT73Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.9.0beta2.tgz"
  sha256 "48f9b0b6c37d7178bdfceaeb08e4ac308c8edb071dda20ac1219b0c960faaa75"
  license "MIT"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "8e7ddea4d3f8b2eb95e0cd5a5d6a6a0626900b0085654470f2ebcc06194cf0e2" => :catalina
    sha256 "bd332e9716b231bbe0930d8d216c1eab88a5a802c38defeea8488bf163b7b44c" => :mojave
  end

  depends_on "unixodbc"
end
