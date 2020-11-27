require_relative "../lib/php_pecl_formula"

class PhpAT74Apcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.19.tgz"
  sha256 "837fbc99d5c79efb510fafaf585ef0c06e02baf8310a7d77f93e402c93276ce0"
  license "PHP-3.01"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "994ebc00a83062fe33561c3b4b661d1b3e954f48ab9861f0a7edbe38dae1b6fa" => :catalina
    sha256 "a9aad1ef33fbdd43e11637eccebc3e913d537a423de31b0d671e855f3d5f8a41" => :mojave
  end
end
