require_relative "../lib/php_pecl_formula"

class PhpAT80Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.20.1.tgz"
  sha256 "09e6846e936f5100600c00671832e0a4ded1b4fe1ab233fb71693c1476cf3816"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "094552fe2c22f3b9a131fd1ffbdda452a5aa44838aa745c6d54453429f3847d9"
    sha256 cellar: :any_skip_relocation, big_sur:  "3b00587c1c54b099dc7b3e3db9ec8ade1f4b397c454abe2e354399983693f0fb"
    sha256 cellar: :any_skip_relocation, catalina: "1317af472effd4162c6a797bcdab98a5eada9b5db4ce7532716a8068dcdd4c3f"
  end
end
