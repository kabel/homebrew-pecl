require_relative "../lib/php_pecl_formula"

class PhpAT74Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.5.1.tgz"
  sha256 "243ff2094edcacb2ae46ee3a4d9f38a60a4f26a6a71f59023b6198cbed0f7f81"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "cd37a1a9d3a9745cb60f81228ff2f41ad59b5a1a5b04e936c6704e430473d2f9"
    sha256 catalina: "6b53c4437e9a43a62c2b84e5e850bbe55a5bef660268c2cdda67c303eafaf0b6"
    sha256 mojave:   "d5735c37f31f54a298c33b572a161002bd95229f08afc1a7739bd94225471875"
  end

  depends_on "imagemagick"
end
