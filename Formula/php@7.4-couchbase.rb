require_relative "../lib/php_pecl_formula"

class PhpAT74Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.0.0.tgz"
  sha256 "caa67e972a8e0f50b920088434eea14671902f253fb5bfb854b7e8d3898bcd26"
  revision 1
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "6f079b470379d9b6ed36cab0751d3aaf985e0cf366b0a87c958cd8025e8ef8eb"
    sha256 cellar: :any, monterey: "e3f235122e579717e900f01ee9e4ad0ed0c1561145915e4e98aa7dc06be5702d"
    sha256 cellar: :any, big_sur:  "aee16c0777a54f77fd4b61ce0725127a26ca03ce54fb9954eaecf7b9487a0b6c"
  end

  disable! date: "2022-11-28", because: :versioned_formula

  depends_on "cmake" => :build
  depends_on "openssl@1.1"
end
