require_relative "../lib/php_pecl_formula"

class PhpAT71Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.8.0.tgz"
  sha256 "cb1d117ecbec7409a408cf24e59d92f7e3816fe8e2331dd0ffc3dce60228c264"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "3fdfc6f745bb885e0d965105f453684637eda1739a43a3b1fb27b11e5616fadb" => :mojave
    sha256 "082f8a755d85d1ed6f267b9e1f64a4d71653d482f510671f0bead2cf14b71472" => :high_sierra
  end

  def extension_type
    "zend_extension"
  end
end
