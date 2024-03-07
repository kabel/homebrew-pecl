require_relative "../lib/php_pecl_formula"

class PhpPdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.12.0.tgz"
  sha256 "22f0cb17b45f0deccd0bba072ee0085ff4094cd6ee2acc26f7f924975ef652c6"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "5dac2f3f8a83d2fe4f62a6c0f5dfb3764d2a6afe2558528af847d14bb6d251c1"
    sha256 cellar: :any, ventura:  "8c0e569399ce7b69e457b3a5ad5ac44455c464c21e56316765848b3303052b94"
    sha256 cellar: :any, monterey: "9c9f7a29c2985c346e5197f22e447a0d474d23e79d760eff8a929fcfd7b4dce7"
  end

  depends_on "unixodbc"
end
