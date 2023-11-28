require_relative "../lib/php_pecl_formula"

class PhpAT81PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.11.1.tgz"
  sha256 "549855a992a1363e4edef7b31be6ab0f9cd6dd9cc446657857750065eae6af89"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "40c62cbcc910fb0b48fd8dc7d919a5b33ec9c38aef67c8424709fbc7e10c6287"
    sha256 cellar: :any, ventura:  "5ddae0d81856f8d569fe21e7220657652c91ca15016afeb2999b5480cf560c8c"
    sha256 cellar: :any, monterey: "af07cb49b646891c9dce783b5a9851f554c25d34b809b24d1d8870e26adb2363"
  end

  deprecate! date: "2024-11-25", because: :unsupported

  depends_on "unixodbc"
end
