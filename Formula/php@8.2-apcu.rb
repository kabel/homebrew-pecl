require_relative "../lib/php_pecl_formula"

class PhpAT82Apcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.23.tgz"
  sha256 "67ee7464ccad2335c3fa4aeb0b8edbcf6d8344feea7922620c6a13015d604482"
  license "PHP-3.01"

  deprecate! date: "2025-12-08", because: :unsupported
end
