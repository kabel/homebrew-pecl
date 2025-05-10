require_relative "../lib/php_pecl_formula"

class PhpAT82Solr < PhpPeclFormula
  extension_dsl <<~EOS
    The Apache Solr PHP extension is an extremely fast,
    light-weight, feature-rich library that allows PHP applications to
    communicate easily and efficiently with Apache Solr server instances
    using an object-oriented API
  EOS

  url "https://pecl.php.net/get/solr-2.8.1.tgz"
  sha256 "1284d25f0314009abf7187d79e4bdb53a28ca63436c2c3dd8767fc4880810c91"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "9f7c378a09cc7d09585c8fed88ce75d0d54b30e466d5f10d1811f401f5fda8a5"
    sha256 cellar: :any, ventura: "d69f424c0883dea9e89aabf293a22722c8586121377fc4b6cf91067ac6e29627"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  depends_on "curl"

  configure_arg %W[
    --with-curl=#{Formula["curl"].opt_prefix}
  ]
end
