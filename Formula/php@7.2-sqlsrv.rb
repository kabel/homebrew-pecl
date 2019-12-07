require_relative "../lib/php_pecl_formula"

class PhpAT72Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.7.1preview.tgz"
  sha256 "dd37520cd9d5e56b9d446e3ccc7e831fba409177a187e69448a5a99865761c76"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "82379c0be13474874227f2b8dff5c97b960e70434f2814f101167e0c63c4f0be" => :mojave
    sha256 "a4046958a98fe8f49590e4e41528562371a2dcb795625a7aa11aaa10879b002c" => :high_sierra
  end

  depends_on "unixodbc"

  def source_dir
    "sqlsrv-5.7.1preview"
  end
end
