require_relative "../lib/php_pecl_formula"

class PhpSsh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "https://pecl.php.net/get/ssh2-1.3.1.tgz"
  sha256 "9093a1f8d24dc65836027b0e239c50de8d5eaebf8396bc3331fdd38c5d69afd9"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "635357ce89e19fede2d0d9094c1a0e0289d39674ed1e6ad41ef68bf1d08f4fea"
    sha256 catalina: "983af527054a2afd2ebfe09dfb66a46cc64da0c8d4ca4cd2c040c0209dd391ef"
    sha256 mojave:   "0da5a9cc7b27af8cec69aed44bf9854ecb17c7bd9d337ccc96d3034f4542d32c"
  end

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"].opt_prefix}"
end
