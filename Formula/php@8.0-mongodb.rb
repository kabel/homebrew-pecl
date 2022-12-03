require_relative "../lib/php_pecl_formula"

class PhpAT80Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.15.0.tgz"
  sha256 "eeb6268d34bd0b4a3dcc60dde4e484f5cf4fa2439ca3d9f024c0000e99ee7240"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "f5890df4b704d792bf174917f9657c8daaa58609eef29aa35d264184f122610a"
    sha256 cellar: :any, monterey: "555b05484d72fab049026e34476d4491e9af17b6ec82603f43688e9d0d2d4270"
    sha256 cellar: :any, big_sur:  "6308e5620086cf8ba15122dbbb9c4f0d0e27f4ee0ac99be87ad90733ca29ee1b"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  depends_on "icu4c"
  depends_on "snappy"
end
