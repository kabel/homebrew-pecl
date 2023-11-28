require_relative "../lib/php_pecl_formula"

class PhpAT82TidewaysXhprof < PhpPeclFormula
  extension_dsl "Modern XHProf compatible PHP Profiler"
  homepage "https://tideways.com/"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "68ee1a6875ce5159d1580557f3292fe05c42d72cb7710ef53535fce46d417246"
    sha256 cellar: :any_skip_relocation, ventura:  "13af07c96dc7454a2434f73bd40fd6ee534b1838dfa4746dd89e707207803280"
    sha256 cellar: :any_skip_relocation, monterey: "f1bbb4773ba64c5d204e1c5075ef0f4db130f2f0fba4c89c0d1775c69f3546fb"
  end

  deprecate! date: "2025-12-08", because: :unsupported

  url "https://github.com/tideways/php-xhprof-extension/archive/v5.0.4.tar.gz"
  sha256 "a414e5d30cba360fbbc54ce929a6db4ae8a9b93a2e58d447e6a5dd7af6fecf72"
  license "Apache-2.0"
end
