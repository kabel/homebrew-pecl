require_relative "../lib/php_pecl_formula"

class PhpAT80PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.11.1.tgz"
  sha256 "549855a992a1363e4edef7b31be6ab0f9cd6dd9cc446657857750065eae6af89"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "624caa268ecc576283034d3f5f465ba92121934750602ad0d0f8540f70f86190"
    sha256 cellar: :any, ventura:  "e6c79cd2f86a3e3862d9354971a1212e3b2eb8ad9509da49365e8a250b67fc2e"
    sha256 cellar: :any, monterey: "01b0a30768b0ba25c04fa9e064821b790f345111d85f7b6f2bd343c1cf7aaa9a"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  depends_on "unixodbc"
end
