require_relative "../lib/php_pecl_formula"

class PhpAT83PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.12.0.tgz"
  sha256 "22f0cb17b45f0deccd0bba072ee0085ff4094cd6ee2acc26f7f924975ef652c6"
  license "MIT"

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "unixodbc"
end
