require_relative "../lib/php_pecl_formula"

class PhpAT80Translit < PhpPeclFormula
  extension_dsl "Transliterates non-latin character sets to latin"

  url "https://pecl.php.net/get/translit-0.7.1.tgz"
  sha256 "60a914a64416381c8e2b00ccf13188a872bca3e80cc6cc4ab6d7f0af949365b8"
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "f492036b644195289f4ffed9c47777aee7cac966a89ef9b4cdfa9b91713e27c0"
    sha256 cellar: :any_skip_relocation, monterey: "d6b3a7922d4d76fe4ea16474ea0413d2d9b4ed316e539a172e12ba332e617492"
    sha256 cellar: :any_skip_relocation, big_sur:  "c0b09314ebb9b4cacbdd486ca974923398beacc9c1e1ef6cda4e40a4dee7954a"
    sha256 cellar: :any_skip_relocation, catalina: "3a503da2dc764687fcc1f1530d08d8933816cb46fabb347f3b93d3efd0b74bc1"
  end
end
