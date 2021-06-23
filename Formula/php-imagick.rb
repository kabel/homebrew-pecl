require_relative "../lib/php_pecl_formula"

class PhpImagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.5.0.tgz"
  sha256 "795db7c36fbacd3d33a4f53ff2d38584c846e80a04dcd04c55e9e46c28f5d229"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "139b30baa6d07f706f05ecda10cad0d0423826f60fcbe4b885cccb7687549bba"
    sha256 catalina: "662ca7df7f20a1ab060c56fe660ec181ac20e4e76318da14d5a9e915c0c7e0e1"
    sha256 mojave:   "b429430980d40d51e6999d7c8a77b6d6d63759d7c4456b458bf0f6583c7c8314"
  end

  depends_on "imagemagick"
end
