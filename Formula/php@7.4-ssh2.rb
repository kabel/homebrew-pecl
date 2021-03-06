require_relative "../lib/php_pecl_formula"

class PhpAT74Ssh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "https://pecl.php.net/get/ssh2-1.3.1.tgz"
  sha256 "9093a1f8d24dc65836027b0e239c50de8d5eaebf8396bc3331fdd38c5d69afd9"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "63d6fd729ccde0222acb415599de97dd72c0c04c7f995684e748b373b5b87b74"
    sha256 catalina: "e02ddd1c5a9d75651b59efb4245d342fef396c864eb23fc836b0205667d57127"
    sha256 mojave:   "f0a40ca1ea02ef55f089b3ee99ce6821b779fa258f8416255e0f8396e40b1240"
  end

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"].opt_prefix}"
end
