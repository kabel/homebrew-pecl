require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.11.2.tgz"
  sha256 "1f269a4e04777c978e9d4893d5a0c9edd1bcbd3ceb039224e61e95e9dbf40d2e"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "1c8cf588f4863315a2a533f6b8a9019ec965c8389c9f89513c36a1b60c9d4a3b" => :mojave
    sha256 "1805be797853428132de293b87b1f2a5e91093aa5bf30e878fb4bc932c207e3d" => :high_sierra
  end

  patch :DATA
end

__END__
diff --git a/protobuf-3.11.2/protobuf.h b/protobuf-3.11.2/protobuf.h
index 4e6d56a..77c910b 100644
--- a/protobuf-3.11.2/protobuf.h
+++ b/protobuf-3.11.2/protobuf.h
@@ -292,7 +292,7 @@

 #define PHP_PROTO_HASH_OF(array) Z_ARRVAL_P(&array)

-static inline int php_proto_zend_hash_index_update_zval(HashTable* ht, ulong h,
+static inline int php_proto_zend_hash_index_update_zval(HashTable* ht, zend_ulong h,
                                                         zval* pData) {
   void* result = NULL;
   result = zend_hash_index_update(ht, h, pData);
@@ -308,7 +308,7 @@ static inline int php_proto_zend_hash_update(HashTable* ht, const char* key,
   return result != NULL ? SUCCESS : FAILURE;
 }

-static inline int php_proto_zend_hash_index_update_mem(HashTable* ht, ulong h,
+static inline int php_proto_zend_hash_index_update_mem(HashTable* ht, zend_ulong h,
                                                    void* pData, uint nDataSize,
                                                    void** pDest) {
   void* result = NULL;
@@ -337,7 +337,7 @@ static inline int php_proto_zend_hash_update_mem(HashTable* ht, const char* key,
 }

 static inline int php_proto_zend_hash_index_find_zval(const HashTable* ht,
-                                                      ulong h, void** pDest) {
+                                                      zend_ulong h, void** pDest) {
   zval* result = zend_hash_index_find(ht, h);
   if (pDest != NULL) *pDest = result;
   return result != NULL ? SUCCESS : FAILURE;
@@ -351,7 +351,7 @@ static inline int php_proto_zend_hash_find(const HashTable* ht, const char* key,
 }

 static inline int php_proto_zend_hash_index_find_mem(const HashTable* ht,
-                                                     ulong h, void** pDest) {
+                                                     zend_ulong h, void** pDest) {
   void* result = NULL;
   result = zend_hash_index_find_ptr(ht, h);
   if (pDest != NULL) *pDest = result;
