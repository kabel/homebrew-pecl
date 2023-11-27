require_relative "../lib/php_pecl_formula"

class PhpAT80Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.17.0.tgz"
  sha256 "5e7db95103d73212ed0edf8887d92184baa5643476045cb899efbcf439847148"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "9200394a34acf63d48a63b20c9105df2bcc286fa8df4f5fbfa0eca54ff5f5b8e"
    sha256 cellar: :any, monterey: "683c8d34c4f013350c2fb827fe60d092a85c292f0dd1d5f39fa62dd9ecd31b8a"
    sha256 cellar: :any, big_sur:  "a9d57dbf809845d24b2e8ac7f430a37316fc55290526928b2d01e82d5b6c72c2"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  depends_on "icu4c"
  depends_on "snappy"
end
