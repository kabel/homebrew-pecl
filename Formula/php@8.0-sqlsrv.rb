require_relative "../lib/php_pecl_formula"

class PhpAT80Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.9.0.tgz"
  sha256 "0a108e0408e8b984e5ae8bc52824ed32872d72e3a571cd2a5d2b63b200215ab3"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, big_sur:  "e8b890a27eb762645db520513f39caf7539e11d349f2e380d06ded34909eb217"
    sha256 cellar: :any, catalina: "c3c35b3f7c4e1f341d1005d18a606cff3cc3d8ad8ffe0a5360a2594f90aac434"
  end

  depends_on "unixodbc"
end
