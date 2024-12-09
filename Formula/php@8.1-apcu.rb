require_relative "../lib/php_pecl_formula"

class PhpAT81Apcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.24.tgz"
  sha256 "5c28a55b27082c69657e25b7ecf553e2cf6b74ec3fa77d6b76f4fb982e001e43"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "6dd4200bacceb0d9517cb5e217b9ef22ecc320bedc7a28f2f9f95319937eb679"
    sha256 cellar: :any_skip_relocation, ventura:  "05e66f48fe8804ce382ef2d94be4106b42f8cca887877f6f0e0e7d3af37a5423"
    sha256 cellar: :any_skip_relocation, monterey: "0d7b29a6a289d7cf156ffa139b3bf4233e97357670cf6d190445732c8bf8d0b9"
  end

  deprecate! date: "2025-12-31", because: :unsupported
end
