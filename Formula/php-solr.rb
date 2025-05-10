require_relative "../lib/php_pecl_formula"

class PhpSolr < PhpPeclFormula
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
    sha256 cellar: :any, sonoma:  "b35b6ec33b3245c06efac9f6329a07dbc79090af7b43e7e30c27f9cc0cf0256f"
    sha256 cellar: :any, ventura: "875a70da47d72571f9fb68e1d4b2789ce53026dcfb038f71118f5657a95c0e0f"
  end

  depends_on "curl"

  configure_arg %W[
    --with-curl=#{Formula["curl"].opt_prefix}
  ]
end
