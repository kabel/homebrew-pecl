require_relative "../lib/php_pecl_formula"

class PhpAT74Raphf < PhpPeclFormula
  extension_dsl "Resource and persistent handles factory"

  url "https://pecl.php.net/get/raphf-2.0.1.tgz"
  sha256 "da3566db17422e5ef08b7ff144162952aabc14cb22407cc6b1d2a2d095812bd0"
  license "BSD-2-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "d1592bfe4bd598b1aa928b2bb8a3c1ce002ac6db6d0fe6cf4cafc24397858404"
    sha256 cellar: :any_skip_relocation, big_sur:  "d8e6450335af5336cb3c34c60898ff7da7bd36fb7babe352ceb168ed5290c2af"
    sha256 cellar: :any_skip_relocation, catalina: "56232c741a733ff0c70b583efc51491119e08ef4750cf0b53de9cd8147f20caa"
    sha256 cellar: :any_skip_relocation, mojave:   "688ae0bf1d998ddf2c3b986183c2aefbb926215602f18f75da4416bdca872136"
  end

  conf_order "05"
end
