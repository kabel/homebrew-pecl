require_relative "../lib/php_pecl_formula"

class PhpAT73Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.8.0.tgz"
  sha256 "cb1d117ecbec7409a408cf24e59d92f7e3816fe8e2331dd0ffc3dce60228c264"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "69923d8031f80faa429ece0dc1cc1ae3fda66a1dc3aa61fd86fecf04817b30ea" => :mojave
    sha256 "630634eb71d437bed05d91812fb2177bac27bc7ad7d8501b463aed74f6969931" => :high_sierra
  end

  def extension_type
    "zend_extension"
  end
end
