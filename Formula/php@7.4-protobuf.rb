require_relative "../lib/php_pecl_formula"

class PhpAT74Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.15.8.tgz"
  sha256 "8d36414a81ac731f5c010def3b33b62ca881df99f9b9b1f3e019d9fd93dd7bd8"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "306a05560db3a954d417a89bb03d1968a6106335fb3c92db8276a1cf76c33445"
    sha256 cellar: :any_skip_relocation, catalina: "4c773f3374383c133b264e423156a868eff1e1da1718cdc9c41bf1bdba070fad"
    sha256 cellar: :any_skip_relocation, mojave:   "9d7cef8c10e36b76344a3767d08b2e7c4d81fce73505995f34b520057b77936f"
  end
end
