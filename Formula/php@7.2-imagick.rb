require_relative "../lib/php_pecl_formula"

class PhpAT72Imagick < PhpPeclFormula
  extension_dsl "Create and modify images using the ImageMagick API"

  url "https://pecl.php.net/get/imagick-3.4.4.tgz"
  sha256 "8dd5aa16465c218651fc8993e1faecd982e6a597870fd4b937e9ece02d567077"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "58b446abc4509987405e51d3800becc03c3e7328d3eeca68e07ead71aae635d2" => :mojave
    sha256 "eda2dfeaa176fb1ae737255efed7c3e08b1b9611b03e1d2344858bdb81c0ca36" => :high_sierra
  end

  depends_on "imagemagick"
end
