require_relative "../lib/php_pecl_formula"

class PhpAT81PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.12.0.tgz"
  sha256 "22f0cb17b45f0deccd0bba072ee0085ff4094cd6ee2acc26f7f924975ef652c6"
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
