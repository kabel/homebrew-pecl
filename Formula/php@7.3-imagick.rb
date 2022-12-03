require_relative "../lib/php_pecl_formula"

class PhpAT73Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.5.1.tgz"
  sha256 "243ff2094edcacb2ae46ee3a4d9f38a60a4f26a6a71f59023b6198cbed0f7f81"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 big_sur:  "c0cc448560be9b3abcda63a12b9b7f55a209a7f8dd474264219b79e2a7565dbf"
    sha256 catalina: "fb089e16aee833d26b16ec0001aec26b771ac4a6f08b6f036738ffd955a46832"
    sha256 mojave:   "029e2c2c4a383d1d22c2911f4a9be4420b7d2106bfbb39496071a7aa95fd02b4"
  end

  disable! date: "2021-12-06", because: :versioned_formula

  depends_on "imagemagick"
end
