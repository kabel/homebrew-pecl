require_relative "../lib/php_pecl_formula"

class PhpImagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.7.0.tgz"
  sha256 "5a364354109029d224bcbb2e82e15b248be9b641227f45e63425c06531792d3e"
  revision 4
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "9c41b7117f51d9a2b8a848b7d8f193dcc1947e839d2ea5344a76a305968222e7"
    sha256 cellar: :any, ventura: "46205d71d153801647602fb57fde76d8355717fd4a33f4d2de5b180aa3cab43e"
  end

  depends_on "imagemagick"

  # See https://github.com/Imagick/imagick/pull/690
  patch do
    url "https://gist.githubusercontent.com/kabel/4594046009421e35eec23336ad52c186/raw/3f8b0daf523420d3b0518f55c5789a1882f7a91f/pecl-imagick-690.patch"
    sha256 "33570d6536328790eb4594656b593ac428426874952567a164fc6139670bd0df"
  end
end
