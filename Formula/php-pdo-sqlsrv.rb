require_relative "../lib/php_pecl_formula"

class PhpPdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.7.1preview.tgz"
  sha256 "93c87bd7ee908bc4f1a96fbba24f161555b1472708442c37145b3385ceb37b0d"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "d1cb8112330966c3baa4f9e72f2a4b0c98d6b400d3edbad07f3028bfbb87f64f" => :mojave
    sha256 "3988702254e10eca266c4620466b20bc337d7908c19b7790f2586947d24d8dac" => :high_sierra
  end

  depends_on "unixodbc"

  def source_dir
    "pdo_sqlsrv-5.7.1preview"
  end
end
