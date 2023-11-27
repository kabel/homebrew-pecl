require_relative "../lib/php_pecl_formula"

class PhpAT80Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.11.1.tgz"
  sha256 "678ab60174be56b09c6916307700e716a4ff266ad53e43990a9d9740d4728463"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "e4fa1dd31a95834918620ebd00a697edfd0602549604244c6afe1c71aea53287"
    sha256 cellar: :any, monterey: "00e1a05f2cf0fa97854e12c7df34c1eb3cb4bdf2c967f49634792515c97f21f2"
    sha256 cellar: :any, big_sur:  "93713ddefa6c8707c8a80cf50ae8ec25cb124ddc90f544a0c9b50c1b023e9b9c"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  depends_on "unixodbc"
end
