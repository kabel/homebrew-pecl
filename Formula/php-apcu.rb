require_relative "../lib/php_pecl_formula"

class PhpApcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.24.tgz"
  sha256 "5c28a55b27082c69657e25b7ecf553e2cf6b74ec3fa77d6b76f4fb982e001e43"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "2be6e3f3e4f9568c07738da0777dc7d0047304782bff1d26d9699097f09e2b40"
    sha256 cellar: :any_skip_relocation, ventura: "275bbc9a26735370f66fd67a67bb34e5803d33c285a344dcab1dcf2cd92baed0"
  end
end
