require_relative "../lib/php_pecl_formula"

class PhpAT73Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.0.0.tgz"
  sha256 "845007e82c1d4e088770d1d87f5832aa3a767cb5a3664fc1615db62cecc3ca62"
  license "PHP-3.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "6bf5774eb2a0b92781cee9a53b7d1cf350cf673ed99f37200bc47d0f432bc817" => :catalina
    sha256 "b962bea3220f84efeb2e3f052daf719fef4a027f75572425d8795217791f4034" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
