require_relative "../lib/php_pecl_formula"

class PhpAT82Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.1.6.tgz"
  sha256 "a69f1605583eabdb59c2cd4c17334b3267398a1d47e1fd7edb92d8bef9dee008"
  license "PHP-3.01"

  deprecate! date: "2025-12-08", because: :unsupported
end
