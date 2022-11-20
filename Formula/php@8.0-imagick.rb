require_relative "../lib/php_pecl_formula"

class PhpAT80Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.7.0.tgz"
  sha256 "5a364354109029d224bcbb2e82e15b248be9b641227f45e63425c06531792d3e"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "1a6dc0d7e2eef65beb4a5e6905853b78fa722eab11421b167816ac98c68d345e"
    sha256 cellar: :any, big_sur:  "da91168871e22bf1079e59e16eeea6d50343eab7376a6cf6c4c96885f7225bdf"
    sha256 cellar: :any, catalina: "eb64851a613eb326559719d9575da6e38c624468f7ff5eb961f8366dcadac87c"
  end

  depends_on "imagemagick"
end
