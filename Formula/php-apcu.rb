require_relative "../lib/php_pecl_formula"

class PhpApcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.19.tgz"
  sha256 "837fbc99d5c79efb510fafaf585ef0c06e02baf8310a7d77f93e402c93276ce0"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "337dbd8b00c6f4e45f801613dde1f624e6bebe49744348c0cc8b633f4cf4c4c7" => :catalina
    sha256 "8157228d41fed2200266161e1e4c83290a34ee9e4817cbb2f22a95b5ab08cd92" => :mojave
  end
end
