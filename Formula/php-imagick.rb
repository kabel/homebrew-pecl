require_relative "../lib/php_pecl_formula"

class PhpImagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.5.1.tgz"
  sha256 "243ff2094edcacb2ae46ee3a4d9f38a60a4f26a6a71f59023b6198cbed0f7f81"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "139b30baa6d07f706f05ecda10cad0d0423826f60fcbe4b885cccb7687549bba"
    sha256 catalina: "662ca7df7f20a1ab060c56fe660ec181ac20e4e76318da14d5a9e915c0c7e0e1"
    sha256 mojave:   "b429430980d40d51e6999d7c8a77b6d6d63759d7c4456b458bf0f6583c7c8314"
  end

  depends_on "imagemagick"
end
