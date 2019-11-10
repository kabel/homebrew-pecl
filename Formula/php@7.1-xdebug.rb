require_relative "../lib/php_pecl_formula"

class PhpAT71Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.8.0.tgz"
  sha256 "cb1d117ecbec7409a408cf24e59d92f7e3816fe8e2331dd0ffc3dce60228c264"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "9b7993c84882eac38904c959ec49f07ac7ea8dc9e1559a1acb9cce4c19cca005" => :mojave
    sha256 "3049a820f70996d83acc65a11fa848958690978231f74337b360683e25fd3ede" => :high_sierra
  end

  def extension_type
    "zend_extension"
  end
end
