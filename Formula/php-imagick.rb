require_relative "../lib/php_pecl_formula"

class PhpImagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.7.0.tgz"
  sha256 "5a364354109029d224bcbb2e82e15b248be9b641227f45e63425c06531792d3e"
  revision 3
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "b574d3fc4b541e0801837e694b4643b6bc96cb59bb6b29faa2c44cbcb970e3b4"
    sha256 cellar: :any, monterey: "54c8da67170b4db170725a2f7e9908a210551c6b53dd1f6e6fafcf35c562dd33"
    sha256 cellar: :any, big_sur:  "46fce69e05f2ae32b058417abee7c38fc678300576cd9ca88b54126f1cb14095"
  end

  depends_on "imagemagick"
end
