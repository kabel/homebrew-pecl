require_relative "../lib/php_pecl_formula"

class PhpAT73Apcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.21.tgz"
  sha256 "1033530448696ee7cadec85050f6df5135fb1330072ef2a74569392acfecfbc1"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "a707b607eab95f2cfac2b5efb0d7d03e9ef4390dd5fbcab329a375bede00c38a"
    sha256 cellar: :any_skip_relocation, catalina: "0ce759b7190e23c17fcad549412eefc9b1060fa8af0c7f249200ab971cf1e98c"
    sha256 cellar: :any_skip_relocation, mojave:   "2381b352be7fc9b0461d75259740d5f851adb22996eb20c5ab8ba3d334fcfd97"
  end
end
