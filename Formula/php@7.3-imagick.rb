require_relative "../lib/php_pecl_formula"

class PhpAT73Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.5.0.tgz"
  sha256 "795db7c36fbacd3d33a4f53ff2d38584c846e80a04dcd04c55e9e46c28f5d229"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "83a3eaecd6f34e2b529e59b608512ce3d866d218fd291e4aba8c70d86c20240b"
    sha256 catalina: "6b0f1e061709921356d068f38008281e54f2e6d0234eeb621a32a63596e5ef72"
    sha256 mojave:   "b5ed25bebe95804ce90baacf7aad03503632296344bbc07ce7757fa46c1f10b7"
  end

  depends_on "imagemagick"
end
