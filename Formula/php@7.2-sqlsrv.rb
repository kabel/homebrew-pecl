require_relative "../lib/php_pecl_formula"

class PhpAT72Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.8.1.tgz"
  sha256 "39c5c07989d8b53e9ccdd79e8dc5eb6159632be89b1c01e23ea308c8e0332a31"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "ebea637d8bcf28ac2bff473678be94ebca3b46faf152644ec4c045d27e6995eb" => :mojave
    sha256 "c2723d5454d5e0d9495dc8edd8672b72a5be4e300bb460d6881fda4dc09bd1df" => :high_sierra
  end

  depends_on "unixodbc"
end
