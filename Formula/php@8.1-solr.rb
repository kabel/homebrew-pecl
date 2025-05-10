require_relative "../lib/php_pecl_formula"

class PhpAT81Solr < PhpPeclFormula
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
    sha256 cellar: :any, sonoma:  "da5a5603a7a222be5e83a08d0ac3342647414b8c387387003ec55e7bf0aa066f"
    sha256 cellar: :any, ventura: "6d758742f98ac8e70c21a6c8759630dd8eadc9c13ed461cb97070c675bcf48c2"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  depends_on "curl"

  configure_arg %W[
    --with-curl=#{Formula["curl"].opt_prefix}
  ]
end
