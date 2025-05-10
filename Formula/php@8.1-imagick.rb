require_relative "../lib/php_pecl_formula"

class PhpAT81Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.8.0.tgz"
  sha256 "bda67461c854f20d6105782b769c524fc37388b75d4481d951644d2167ffeec6"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "dc7678d5178548bad0e4c6474ead0d71de96721230d8d4f5e782525a3984a4e4"
    sha256 cellar: :any, ventura: "e7656a021f9d3b6d2ccad229b74956e777bec2244fa439b9117c896af5253479"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  depends_on "imagemagick"
  depends_on "libomp"
end
