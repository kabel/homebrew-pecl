require_relative "../lib/php_pecl_formula"

class PhpAT81TidewaysXhprof < PhpPeclFormula
  extension_dsl "Modern XHProf compatible PHP Profiler"
  homepage "https://tideways.com/"

  url "https://github.com/tideways/php-xhprof-extension/archive/v5.0.4.tar.gz"
  sha256 "a414e5d30cba360fbbc54ce929a6db4ae8a9b93a2e58d447e6a5dd7af6fecf72"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "c1eadf35077880a3dc86cbbea8c207c6dddc49f7bc1484a323fbe548a16bda20"
    sha256 cellar: :any_skip_relocation, ventura:  "c0f43473c554f5965e7f0add8dfb108fa21542decf7d69b3ffbd5eb49a22d0e9"
    sha256 cellar: :any_skip_relocation, monterey: "6712f09bff598ea755e5236cdc12422ac646561d4446c1200a7f0a1277991da9"
    sha256 cellar: :any_skip_relocation, big_sur:  "3899f0a4eb8ded24b8493a9e157799d3c201ea21faa11738274945d413626faa"
  end

  deprecate! date: "2025-12-31", because: :unsupported
end
