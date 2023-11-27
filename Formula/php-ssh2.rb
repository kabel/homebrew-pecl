require_relative "../lib/php_pecl_formula"

class PhpSsh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "https://pecl.php.net/get/ssh2-1.4.tgz"
  sha256 "988b52e0315bb5ed725050cb02de89b541034b7be6b94623dcb2baa33f811d87"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "02c8c1e81530e1b0f8f316030b05ba2922273ca99cf136b6abd830edd6ef80af"
    sha256 cellar: :any, monterey: "6e7ab9b926069f844eb8028ba12401438312839bfb7d53b4c665a101dcfa7285"
    sha256 cellar: :any, big_sur:  "d4ca1501533a800c92d68b3b36176e1365ff18165806746b5c543df50100d832"
  end

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"].opt_prefix}"
end
