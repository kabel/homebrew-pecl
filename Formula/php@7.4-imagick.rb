require_relative "../lib/php_pecl_formula"

class PhpAT74Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.7.0.tgz"
  sha256 "5a364354109029d224bcbb2e82e15b248be9b641227f45e63425c06531792d3e"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, ventura:  "793ca1f56cb13913098834ace1e94bcac23daf6f438880d8adec7f45be524f10"
    sha256 cellar: :any, monterey: "805010e3876dd11771873d9dd48eef1379a77dfdcc1fbdf726e7965d8f3edeca"
    sha256 cellar: :any, big_sur:  "1af0b487292dc0e288bc455f862b0d085a2bf85fd5bb43fa0d259fd1b29489fc"
  end

  depends_on "imagemagick"
end
