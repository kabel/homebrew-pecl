require_relative "../lib/php_pecl_formula"

class PhpAT82Translit < PhpPeclFormula
  extension_dsl "Transliterates non-latin character sets to latin"

  url "https://pecl.php.net/get/translit-0.7.1.tgz"
  sha256 "60a914a64416381c8e2b00ccf13188a872bca3e80cc6cc4ab6d7f0af949365b8"
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "57b1df013dcb1a2cea2db4cc4f4c05fe14031551e4b4cc3d48f89b43038d8ba8"
    sha256 cellar: :any_skip_relocation, ventura:  "6f9ca8db597680e78c605d722224a3027f1d6c3a21af5f389869fd92d0ede748"
    sha256 cellar: :any_skip_relocation, monterey: "37ad26097464974112444484b20836a4d37cefbabc0bb7e39f4a146ff04e0559"
  end

  deprecate! date: "2025-12-08", because: :unsupported
end
