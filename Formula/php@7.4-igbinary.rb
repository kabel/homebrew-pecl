require_relative "../lib/php_pecl_formula"

class PhpAT74Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.9.tgz"
  sha256 "2937ec9d554e6e5fb690502b564865a6fc4ad6e34644843aef70ede049d77586"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "36e27da8a8a461daece590958cbab5c3d68c41d634cdef7f3d142fdbc1a33117"
    sha256 cellar: :any_skip_relocation, big_sur:  "eb466f123046c150c2cafe9550b7d9030253caad67e00fa8e80949d3b6273ccf"
    sha256 cellar: :any_skip_relocation, catalina: "a5e4fabea247b249a2e22adf61179397df2952d848b659c4ebf8df376a3665db"
  end
end
