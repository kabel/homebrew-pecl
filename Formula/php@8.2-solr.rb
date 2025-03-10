require_relative "../lib/php_pecl_formula"

class PhpAT82Solr < PhpPeclFormula
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
    sha256 cellar: :any, sonoma:  "944a3cc62b42f623bf92ec75afa402cd7c83c1ce814e21861525ca3e040932e9"
    sha256 cellar: :any, ventura: "1c66bd2da2abc6dd176869386fe23199d06c4f34e80a75616ad00b79aed899ec"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  depends_on "curl"

  configure_arg %W[
    --with-curl=#{Formula["curl"].opt_prefix}
  ]
end
