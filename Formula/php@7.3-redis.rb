require_relative "../lib/php_pecl_formula"

class PhpAT73Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.3.tgz"
  sha256 "37789161e164cd52239a30c9a238da61fec5c8395cdac385b6ed8f0c50fd92f0"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, catalina: "f167f68c000f562b1628397062f72aa9ad361a067a11b2c14cb75e848b3d7f43"
    sha256 cellar: :any_skip_relocation, mojave:   "62d0a65ba1a777866e4418582eeb6f9d82f01c171ea6e63559ceeda18d64fd04"
  end
end
