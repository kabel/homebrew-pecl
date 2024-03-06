require_relative "../lib/php_pecl_formula"

class PhpAT82PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.12.0.tgz"
  sha256 "22f0cb17b45f0deccd0bba072ee0085ff4094cd6ee2acc26f7f924975ef652c6"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "3de173093e5943b317fbbbfc1f02d306c93cb3e187085a4f9e4097c0cccf3023"
    sha256 cellar: :any, ventura:  "3cba9209567d2af899e7d10bcc3c89f1753a70dbd7867dc767b822a61f2955a0"
    sha256 cellar: :any, monterey: "581e518dc2fc80cd6c861ccb8e66abdc0fc7c2a8d03545e4abcc595db5c5c317"
  end

  deprecate! date: "2025-12-08", because: :unsupported

  depends_on "unixodbc"
end
