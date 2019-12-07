require_relative "../lib/php_pecl_formula"

class PhpAT72PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.7.1preview.tgz"
  sha256 "93c87bd7ee908bc4f1a96fbba24f161555b1472708442c37145b3385ceb37b0d"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "f1882ec78cb539c4ddb71e7731aeee0f6d9293c98a0127845fa93a574bb6cfbc" => :mojave
    sha256 "00173965b4f41c7ee2d9df2b85ef82005de01c0d67a6f15101ed39becc217997" => :high_sierra
  end

  depends_on "unixodbc"

  def source_dir
    "pdo_sqlsrv-5.7.1preview"
  end
end
