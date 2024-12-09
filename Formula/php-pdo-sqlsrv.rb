require_relative "../lib/php_pecl_formula"

class PhpPdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.12.0.tgz"
  sha256 "22f0cb17b45f0deccd0bba072ee0085ff4094cd6ee2acc26f7f924975ef652c6"
  revision 1
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "576b7c37bec12fd09e8c9c1ac7768c9ce8f75e1b7024ac5e6614ddc3d15c0579"
    sha256 cellar: :any, ventura: "4ef96be920006dbd2d1b01939410f99adfd7843ab53ad3ec4a18e44025c421df"
  end

  depends_on "unixodbc"
end
