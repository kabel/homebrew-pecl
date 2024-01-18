require_relative "../lib/php_pecl_formula"

class PhpSolr < PhpPeclFormula
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
    sha256 cellar: :any, sonoma:   "46fa6cb8ba8b425ec662c4d692e35971a584c0721dfe02babfd1217cc4e54fb0"
    sha256 cellar: :any, ventura:  "f9f164d9a2d2fb1602593ed70484267206b29b77fe06be43cec9ffd999f330b3"
    sha256 cellar: :any, monterey: "c8e468b9b6c94b2f3e4688ac70634a9d0c4f41e36fdee8df7192b9269d64dcb4"
  end

  depends_on "curl"

  configure_arg %W[
    --with-curl=#{Formula["curl"].opt_prefix}
  ]
end
