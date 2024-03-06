require_relative "../lib/php_pecl_formula"

class PhpAT81Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.12.0.tgz"
  sha256 "a9ebb880b2a558d3d6684f6e6802c53c5bffa49e1ee60d1473a7124fc9cb72ad"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "780dd1c1ea08751cb0026f96acf79d1dc4b69f9d740930c6183c581a94c68420"
    sha256 cellar: :any, ventura:  "12e140c58364c3faff28294e0be2731a8dd17e77a82606ee55065439ee6397a3"
    sha256 cellar: :any, monterey: "4b7d3b38906d0e470d01035f9badd887d3bd6a4a7d08b6fb90cf9a59012553e8"
  end

  deprecate! date: "2024-11-25", because: :unsupported

  depends_on "unixodbc"
end
