require_relative "../lib/php_pecl_formula"

class PhpAT73Msgpack < PhpPeclFormula
  extension_dsl "Interfacing with MessagePack"

  url "https://pecl.php.net/get/msgpack-2.1.2.tgz"
  sha256 "912ff4d33f323ea7cb04569df5ae23c09ce614412a65c39c2ca11f52802abe82"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "04eeb4cd6591dc887367085b5b23c256c58adbbdccf2a34f775ad54ba98f456c"
    sha256 cellar: :any_skip_relocation, catalina: "e4c1bd7e66ee51c19c34a8462517260db07256840761585aa9f26a1604d81bca"
    sha256 cellar: :any_skip_relocation, mojave:   "9a341971a25820db73fdaf6a76bae133daf6cf483f9ff5028bd5c25a1aab1676"
  end

  depends_on "msgpack"
end
