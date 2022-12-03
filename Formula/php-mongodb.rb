require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.15.0.tgz"
  sha256 "eeb6268d34bd0b4a3dcc60dde4e484f5cf4fa2439ca3d9f024c0000e99ee7240"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "6ba615dcdf01ee98052890f6ccd67370ec15bce52c568de1c3603c0cce27c010"
    sha256 cellar: :any, monterey: "823fb984b0cd47756fb8a46d42c00a4e7ef2fe3d43034fdc770ce0cc31288556"
    sha256 cellar: :any, big_sur:  "21b94b9768585ce94190f1c5b00a0f4a26d2f68275d5d9eaf67780a772c22b2e"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
