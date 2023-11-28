require_relative "../lib/php_pecl_formula"

class PhpDs < PhpPeclFormula
  extension_dsl "Data Structures for PHP"

  url "https://pecl.php.net/get/ds-1.4.0.tgz"
  sha256 "a9b930582de8054e2b1a3502bec9d9e064941b5b9b217acc31e4b47f442b93ef"
  revision 3
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "7fe207158a1feb0c59766f09bca77836651ee9b0b094307d4a7966da4744b11c"
    sha256 cellar: :any_skip_relocation, ventura:  "dff75fd73158fd0fd385319f9903b28e26b736c0420208d1713c95ec5ce6e08e"
    sha256 cellar: :any_skip_relocation, monterey: "0441906c6674f225081565f82be42afeddde2cb669f78b903b55072e2b9f62cc"
  end

  # https://github.com/php-ds/ext-ds/pull/195
  # awaiting release
  patch do
    url "https://gist.githubusercontent.com/kabel/9096720c608d1adbf47b75f415d5d630/raw/bb6da61bbefb2e1226ccaf42eb45d59ac0eef59f/195.diff"
    sha256 "5f4d3d18777df91fae33a7e977bae939c13320526e04b028835db7256cbd1b3a"
  end
end
