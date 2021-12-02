require_relative "../lib/php_pecl_formula"

class PhpAT80Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.6.0.tgz"
  sha256 "4e2965f2d70dd59a40e7957d56e590e731cad2669e9f89e0fca159d748d2947e"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "fef3b70fe520bb9e5eab2d3a1863fda3e8f0374c940f96cde450294f25e93f94"
    sha256 catalina: "a2aa4a38d13c8344956b2424388c0361eb08af5cec49d97874ea9335ef0c672a"
  end

  depends_on "imagemagick"
end
