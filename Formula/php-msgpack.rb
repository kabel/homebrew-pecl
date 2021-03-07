require_relative "../lib/php_pecl_formula"

class PhpMsgpack < PhpPeclFormula
  extension_dsl "Interfacing with MessagePack"

  url "https://pecl.php.net/get/msgpack-2.1.2.tgz"
  sha256 "912ff4d33f323ea7cb04569df5ae23c09ce614412a65c39c2ca11f52802abe82"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "a8af9f70e4a9ccb24304658ac43fb7d9afb8268c425e406f080b5b9dca279a3c"
    sha256 cellar: :any_skip_relocation, catalina: "170b7af5e0f3b2aaad5d9dcdf1d845a4ad3a235d6ac0474016b2428364bc0e27"
    sha256 cellar: :any_skip_relocation, mojave:   "340a4d66992929673e8857249f54250ded3e9d9e2db96d7df5379e74ec3d1b4e"
  end

  depends_on "msgpack"
end
