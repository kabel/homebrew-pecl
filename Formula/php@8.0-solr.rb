require_relative "../lib/php_pecl_formula"

class PhpAT80Solr < PhpPeclFormula
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
    sha256 cellar: :any, ventura:  "cb7c31723776d95dce12f9a811b4bb72315f06c84f03a00b3141993087689248"
    sha256 cellar: :any, monterey: "12ed499787ce1e04f2e2f9f6fb5461785de1ecca739722d4734bd055c58d80ad"
    sha256 cellar: :any, big_sur:  "7ddf6044d688cc6309d941df68af9294cddd4b5968b7edbef3c0668454679559"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  depends_on "curl"

  configure_arg %W[
    --with-curl=#{Formula["curl"].opt_prefix}
  ]
end
