require_relative "../lib/php_pecl_formula"

class PhpAT82Ds < PhpPeclFormula
  extension_dsl "Data Structures for PHP"

  url "https://pecl.php.net/get/ds-1.5.0.tgz"
  sha256 "2b2b45d609ca0958bda52098581ecbab2de749e0b3934d729de61a59226718b0"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "9b42fdd3f82120fe1f8f7775909626311ac684676b6d188ad8239427ae66366a"
    sha256 cellar: :any_skip_relocation, ventura:  "708678d5d868279ac190f3a3f868c8da8a1421e567096b806dd0d59c73bfcc51"
    sha256 cellar: :any_skip_relocation, monterey: "93a2713f236cd7773e42b39b8d42c3ac7b0172d361844abe44153be1ebe0b475"
  end

  deprecate! date: "2025-12-08", because: :unsupported
end
