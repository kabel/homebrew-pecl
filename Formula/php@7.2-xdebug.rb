require_relative "../lib/php_pecl_formula"

class PhpAT72Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.8.0.tgz"
  sha256 "cb1d117ecbec7409a408cf24e59d92f7e3816fe8e2331dd0ffc3dce60228c264"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "6987a766d06a7f8877241e5c6e2cd7fe9af53dee053d1b06ff4df0e1a9f13817" => :mojave
    sha256 "5e8df7efa5eeb30d8f8f57e909d6aa55eec1b4f030450916c3f8bc1d31715ec7" => :high_sierra
  end

  def extension_type
    "zend_extension"
  end
end
