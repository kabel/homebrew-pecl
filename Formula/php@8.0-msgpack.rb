require_relative "../lib/php_pecl_formula"

class PhpAT80Msgpack < PhpPeclFormula
  extension_dsl "Interfacing with MessagePack"

  url "https://pecl.php.net/get/msgpack-2.1.2.tgz"
  sha256 "912ff4d33f323ea7cb04569df5ae23c09ce614412a65c39c2ca11f52802abe82"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "f443765b59018ca465edfc11f4ab0215650f7c48989d7703646c533780ea567f"
    sha256 cellar: :any_skip_relocation, catalina: "2bdd33c637bcde23d4330208250f5a5575e13d978dc85e68e8af98014257caf8"
  end

  depends_on "msgpack"
end
