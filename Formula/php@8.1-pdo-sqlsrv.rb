require_relative "../lib/php_pecl_formula"

class PhpAT81PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.12.0.tgz"
  sha256 "22f0cb17b45f0deccd0bba072ee0085ff4094cd6ee2acc26f7f924975ef652c6"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "4e8a3f355fae536fa5757f59f6d46a36b455e2f81798626221e944cb89436221"
    sha256 cellar: :any, ventura:  "4a75055e43bedc88fa970a32f6a521eedec208af4b825549463f5250fcb37846"
    sha256 cellar: :any, monterey: "a16e3d400bb4ecc76ca59539602ff4ace18cd4540807975652cd5bbb5cb60356"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  depends_on "unixodbc"
end
