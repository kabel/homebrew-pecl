require_relative "../lib/php_pecl_formula"

class PhpAT74Apcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.19.tgz"
  sha256 "837fbc99d5c79efb510fafaf585ef0c06e02baf8310a7d77f93e402c93276ce0"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "4544e677e2ec6be100e5b08d1c12cfa9fc97085fa8929c34b7a00950f34d8ded" => :catalina
    sha256 "16438290d0100f26f50d1f60a1bf56ddce3408145404fc7916e3ec5e48807ee1" => :mojave
  end
end
