require_relative "../lib/php_pecl_formula"

class PhpAT80Ssh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "https://pecl.php.net/get/ssh2-1.3.1.tgz"
  sha256 "9093a1f8d24dc65836027b0e239c50de8d5eaebf8396bc3331fdd38c5d69afd9"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "f8f4482f9057b490f048f49b9e59f3c4bddac18dc5408f5b55ebb6a67a29ae83"
    sha256 catalina: "4ab3820112470ca165db01df972547661f6fc3e30e466aabc4b62c4332689e7b"
  end

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"].opt_prefix}"
end
