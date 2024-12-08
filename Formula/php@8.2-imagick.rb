require_relative "../lib/php_pecl_formula"

class PhpAT82Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.7.0.tgz"
  sha256 "5a364354109029d224bcbb2e82e15b248be9b641227f45e63425c06531792d3e"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "f3571212fc90762eec5589d55bef38a830054088864acdfa67a695fa026056b5"
    sha256 cellar: :any, ventura:  "7cf615842715ab905abb7a7c4b2d138ba8e3bc0dfa2583c6ce5aed53214c7710"
    sha256 cellar: :any, monterey: "b0de764ae069a73f3af5179a6bb1b918d8e57ebe6b82689420b4d5488f5da541"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  depends_on "imagemagick"
end
