require_relative "../lib/php_pecl_formula"

class PhpAT80PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.11.1.tgz"
  sha256 "549855a992a1363e4edef7b31be6ab0f9cd6dd9cc446657857750065eae6af89"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "3d6892b50c49c59f1b44ec62a8890537f86773cdb52fa875c4d1471ceadbfc47"
    sha256 cellar: :any, monterey: "bca281a85ec4bfbf0c1f22bf223115155ddfe5ce5ca69bfc92464acca5fbc0cc"
    sha256 cellar: :any, big_sur:  "7a4cdff4b5c1a12a68ebe09839f0e2a1ba62e24a1bdaa5f1278de9aeca4d844c"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  depends_on "unixodbc"
end
