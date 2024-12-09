require_relative "../lib/php_pecl_formula"

class PhpImagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.7.0.tgz"
  sha256 "5a364354109029d224bcbb2e82e15b248be9b641227f45e63425c06531792d3e"
  revision 4
  license "PHP-3.01"

  depends_on "imagemagick"

  # See https://github.com/Imagick/imagick/pull/690
  patch do
    url "https://gist.githubusercontent.com/kabel/4594046009421e35eec23336ad52c186/raw/3f8b0daf523420d3b0518f55c5789a1882f7a91f/pecl-imagick-690.patch"
    sha256 "33570d6536328790eb4594656b593ac428426874952567a164fc6139670bd0df"
  end
end
