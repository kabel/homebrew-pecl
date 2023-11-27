require_relative "../lib/php_pecl_formula"

class PhpAT81Solr < PhpPeclFormula
  extension_dsl <<~EOS
    The Apache Solr PHP extension is an extremely fast,
    light-weight, feature-rich library that allows PHP applications to
    communicate easily and efficiently with Apache Solr server instances
    using an object-oriented API
  EOS

  url "https://pecl.php.net/get/solr-2.6.0.tgz"
  sha256 "7cbee19bd62d3fc89aea266cbf51c0e1d9d4127098f46848910419e8733a4dc7"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
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
