require_relative "../lib/php_pecl_formula"

class PhpPdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.11.0.tgz"
  sha256 "c307d9bcada02bdc21f59b9f099031b90b30727757bca50fd42fd36159812e8a"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "a913ee114b94a9d0a42aaebac509004d3bf43f5230de911191c666ff7a05e0f7"
    sha256 cellar: :any, monterey: "26cf17562d1236cedf78f05e037f102723737bc89f254f52f2e17032bcea3ed3"
    sha256 cellar: :any, big_sur:  "6238e8de455db779470f45ee038748f023aa83132f199e2fb7cb59bdb741c2ec"
  end

  depends_on "unixodbc"
end
