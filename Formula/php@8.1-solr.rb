require_relative "../lib/php_pecl_formula"

class PhpAT81Solr < PhpPeclFormula
  extension_dsl <<~EOS
    The Apache Solr PHP extension is an extremely fast,
    light-weight, feature-rich library that allows PHP applications to
    communicate easily and efficiently with Apache Solr server instances
    using an object-oriented API
  EOS

  url "https://pecl.php.net/get/solr-2.7.0.tgz"
  sha256 "bfbf7fad1a8738ae5518bd664ca963ea8584cc87ed9d813df29a82170b071ea2"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "9be978ec0ca5072645330302295a27b039eb2183613b226c5163308fea910067"
    sha256 cellar: :any, ventura:  "4444d0d35bdc6d68ee0a1cd4f9ad379f544bda23ea4adf08fadee1eec270ccdf"
    sha256 cellar: :any, monterey: "7454ef1db066373231b66a38dc150a4ca3a3aa93763e01cc6250561fd9494b1d"
    sha256 cellar: :any, big_sur:  "5647cbcf33d713b1488ef25d8cfed566a717b81c8b02235b081ceb20576e99ac"
  end

  deprecate! date: "2024-11-25", because: :unsupported

  depends_on "curl"

  configure_arg %W[
    --with-curl=#{Formula["curl"].opt_prefix}
  ]
end
