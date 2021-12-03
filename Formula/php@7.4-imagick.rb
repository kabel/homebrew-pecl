require_relative "../lib/php_pecl_formula"

class PhpAT74Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.6.0.tgz"
  sha256 "4e2965f2d70dd59a40e7957d56e590e731cad2669e9f89e0fca159d748d2947e"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "6887e66aadab2f80df8c72a0410c32793dc8b10125750b134d172773953217fe"
    sha256 catalina: "de9a54226c3a0d690a8936cd118e0ebb59bf853b36d4118c48c0476d8d518ac6"
  end

  depends_on "imagemagick"
end
