require_relative "../lib/php_pecl_formula"

class PhpAT73Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.2.1.tgz"
  sha256 "c05af6254d704844303fbe8b13b2d54bdb4372b1a081934e67cac42ec79ecbbe"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "1d9a96af1ee6474df0dfd5ffcb6b9b57fa45e4026b9c0d8af6c74750d4868678" => :catalina
    sha256 "82f99727c7b5c158890547cdc1112a7ba5406994756522a0380bc5622012a72d" => :mojave
  end
end
