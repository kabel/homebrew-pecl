require_relative "../lib/php_pecl_formula"

class PhpAT80Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.5.1.tgz"
  sha256 "243ff2094edcacb2ae46ee3a4d9f38a60a4f26a6a71f59023b6198cbed0f7f81"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "e85e6de795a7c4a3f285794163ed8f37740d990acdf15ed21655d8a2d91a8561"
    sha256 catalina: "fca4523cd189de3f3882800dba464e06d9041fb6d6f25699a9afdc0c7e4ef64f"
    sha256 mojave:   "f11f64d1e06441c5741ad1cb4da7c871fd9487a990e0467c2e13e403c08d1489"
  end

  depends_on "imagemagick"
end
