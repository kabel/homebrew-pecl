require_relative "../lib/php_pecl_formula"

class PhpAT72Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.7.2.tgz"
  sha256 "b0f3283aa185c23fcd0137c3aaa58554d330995ef7a3421e983e8d018b05a4a6"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "6987a766d06a7f8877241e5c6e2cd7fe9af53dee053d1b06ff4df0e1a9f13817" => :mojave
    sha256 "5e8df7efa5eeb30d8f8f57e909d6aa55eec1b4f030450916c3f8bc1d31715ec7" => :high_sierra
  end

  devel do
    url "https://pecl.php.net/get/xdebug-2.8.0beta2.tgz"
    sha256 "4cdc590909074b1e28525f354d14283e663bf20e17c468246a09633553a1fea5"
  end

  def extension_type
    "zend_extension"
  end
end
