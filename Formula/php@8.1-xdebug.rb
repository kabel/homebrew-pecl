require_relative "../lib/php_pecl_formula"

class PhpAT81Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.3.2.tgz"
  sha256 "15545b8311bedb5e7df08fd90d6653d9bf33629791e8119e70350475df932c55"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 sonoma:   "e2476e338a8e1d1a8149b77bfb17171f3a90f63b12f030cb6164f4aca3f13ff0"
    sha256 ventura:  "712da1b491bb0456b51944cd917bb8ae867c32b79b2d4db9a7d3c5f73f3cecaa"
    sha256 monterey: "a3bf7314b89594641d283403b7ac26029333e42410634e7980cb45503567125a"
  end

  deprecate! date: "2024-11-25", because: :unsupported

  def extension_type
    "zend_extension"
  end
end
