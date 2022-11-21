require_relative "../lib/php_pecl_formula"

class PhpAT80Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.14.2.tgz"
  sha256 "6f7ca35b997cc9d75431765e11f675bddb634aaa9b63b4087181fa99b9f2aaaa"
  revision 1
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, ventura:  "f5890df4b704d792bf174917f9657c8daaa58609eef29aa35d264184f122610a"
    sha256 cellar: :any, monterey: "555b05484d72fab049026e34476d4491e9af17b6ec82603f43688e9d0d2d4270"
    sha256 cellar: :any, big_sur:  "6308e5620086cf8ba15122dbbb9c4f0d0e27f4ee0ac99be87ad90733ca29ee1b"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
