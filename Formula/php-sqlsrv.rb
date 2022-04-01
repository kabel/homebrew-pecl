require_relative "../lib/php_pecl_formula"

class PhpSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.10.0.tgz"
  sha256 "76b3f083a1a8f103581c21ba3a46d6ca257beae6728cd158a64a46ab59a226b4"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "03632a5da7d4d575b91a87f19284e60aac80424489146aba883b78cd402aa45b"
    sha256 cellar: :any, big_sur:  "0d48ca5e9d61a930b0ed966d40eafaca4348c70e748fa0296a496d0c7234f58a"
    sha256 cellar: :any, catalina: "f60edfe4776036b471fd7064abfbbe0a91859cd1c401cb8ee27d3b44f5319c26"
  end

  depends_on "unixodbc"
end
