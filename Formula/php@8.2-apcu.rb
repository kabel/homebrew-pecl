require_relative "../lib/php_pecl_formula"

class PhpAT82Apcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.24.tgz"
  sha256 "5c28a55b27082c69657e25b7ecf553e2cf6b74ec3fa77d6b76f4fb982e001e43"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "969544cfbca43ccc81f11aae94280b5f8656c56faf16100aa9fe81bc275c8e7a"
    sha256 cellar: :any_skip_relocation, ventura: "258b0c329a7f30567c436b2762ef1a7d58a848afc9e896518473e9b7615cac0a"
  end

  deprecate! date: "2026-12-31", because: :unsupported
end
