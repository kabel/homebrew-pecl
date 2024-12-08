require_relative "../lib/php_pecl_formula"

class PhpAT82Solr < PhpPeclFormula
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
    sha256 cellar: :any, sonoma:   "d0ac70e40932095b5b57a6924c42e587fb861feb265282d84150f0625a8d9ecc"
    sha256 cellar: :any, ventura:  "128301cfdb26cfd5c0a0c6a8dfe6acb6745c4adfc6993758622832630bfbb3ac"
    sha256 cellar: :any, monterey: "e2bf031d22234b9de67f48908fa47f7f896969368d48e85d06bb24182bf9cc98"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  depends_on "curl"

  configure_arg %W[
    --with-curl=#{Formula["curl"].opt_prefix}
  ]
end
