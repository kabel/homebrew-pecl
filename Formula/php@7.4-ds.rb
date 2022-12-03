require_relative "../lib/php_pecl_formula"

class PhpAT74Ds < PhpPeclFormula
  extension_dsl "Data Structures for PHP"

  url "https://pecl.php.net/get/ds-1.4.0.tgz"
  sha256 "a9b930582de8054e2b1a3502bec9d9e064941b5b9b217acc31e4b47f442b93ef"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "67d633cb56580cff3f2b5261d96aa2081c3c2b4768e4fe6aae799a404e84e90e"
    sha256 cellar: :any_skip_relocation, monterey: "133995c835ed41e0612d1d2a880edadd9c22a45372d57693a0eeeee4c082f3ce"
    sha256 cellar: :any_skip_relocation, big_sur:  "2e340a1e1d458059c6e516ecc91f2bc6a7ef5c2c93b327dc6c79fca83297a7c3"
    sha256 cellar: :any_skip_relocation, catalina: "2bed9c882eb9700e4d41b241a136a3710162f329b26b4d1d3622e36f60447e73"
  end

  disable! date: "2022-11-28", because: :versioned_formula
end
