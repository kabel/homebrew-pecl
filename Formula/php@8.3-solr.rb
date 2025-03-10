require_relative "../lib/php_pecl_formula"

class PhpAT83Solr < PhpPeclFormula
  extension_dsl <<~EOS
    The Apache Solr PHP extension is an extremely fast,
    light-weight, feature-rich library that allows PHP applications to
    communicate easily and efficiently with Apache Solr server instances
    using an object-oriented API
  EOS

  url "https://pecl.php.net/get/solr-2.8.0.tgz"
  sha256 "092b52a7b94a807e40f8d85032c85dd0c052fab31d4f518e1d756b9f2d42d4b8"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "da671cd56c50fbc370975554e6fb3057e5fe3252e179f9f973e44dce5ab58faa"
    sha256 cellar: :any, ventura: "a6dcb3865c2b6ce22fb7dd5fc7e9ee0bee068c515f8530baf525b48ce3357885"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "curl"

  configure_arg %W[
    --with-curl=#{Formula["curl"].opt_prefix}
  ]
end
