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
    sha256 cellar: :any, sonoma:   "d8ab6be528aeef247595d0d430a69b4ea687b5e80e392fc21c49dd4ab1421bef"
    sha256 cellar: :any, ventura:  "5bd259f6cd99c56b674e6ad3a8b799109651900c71c1948814082863ee36b721"
    sha256 cellar: :any, monterey: "b5eec73872070b9895ecfd9993e3e0a0a3a0df970c24aa372532997376e251d0"
  end

  deprecate! date: "2025-12-08", because: :unsupported

  depends_on "curl"

  configure_arg %W[
    --with-curl=#{Formula["curl"].opt_prefix}
  ]
end
