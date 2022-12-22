# IEEE-754-Calculator
IEEE-754 Calculator with Pipeline

Giriş

IEEE Kayan Nokta Aritmetiği Standardı kayan noktalı sayı gösteriminde en çok kullanılan standartlardan biridir. İkilik sistemdeki sayılar bilimsel gösterim ile gösterildikten sonra işaret (sign), üst (exponent), ve anlamlı (mantissa) kısımdan oluşan üç parça şeklinde ifade edilebilirler. IEEE 754 standardına göre sayılar tek duyarlı (32 bit) ve çift duyarlı (64 bit) şeklinde gösterilebilirler. Günümüzde hesaplama ağırlıklı çoğu devrede kayan noktalı sayı gösterimleri çok büyük yer kaplamaktadır. Bu projede de amaç kayan noktalı sayı işlemlerini verimli bir şekilde boru hattı ile gerçekleştiren devreyi tasarlamak.

Proje Tasarımı

Proje tek bir modülden oluşmakta ve tüm kayan noktalı sayı işlemleri bu modülde boru hattı yöntemiyle gerçekleştirilmektedir. Tasarımdan kısaca bahsetmek gerekirse:
Giriş olarak birer bitlik rst, clk; 79 bitlik buyruk almakta, çıkış olarak da 32 bitlik kayan nokta gösteriminde yapılan işlemin sonucunu ve mantıklı bir sonuç verildiğine dair gösterge olan bir bitlik cikis_gecerli vermektedir.
Buyruk girişinin en anlamlı 2 bit’i hangi işlemin yapılması gerektiğini, sonraki otuz ikişer bit işlemin yapılacağı kayan nokta gösteriminde verilmiş 2 sayıyı ve buyruğun en anlamsız 13 biti de tasarım içerisinde var olacak olan sonuc_bellegi değişkeninin hangi adresine yazılacağını temsil etmektedir.
Tasarım ana olarak 4 değişken etrafında çalışmaktadır. Bunlar:
- islemX
- islem_turuX
- sayi1_rX
- sayi2_rX

Buradaki X’ler bu değişkenlerden işlemin süreceği çevrim sayısı kadar varolduğu ve her çevrim sonunda işlem(N+1) değişkenine islemN’in belli değişiklilere uğramış halinin atandığını gösterir. Örneğin: sayi1_r3 ve sayi2_r3 3 çevrim önce buyruktan alınmış mantissaları temsil eder ve işlem_turu3 değişkeninin değerine göre uygun işlemlerden geçirildikten sonra sayi1_r4’e sayi1_r3 ve sayi2_r4’e sayi2_r3 atanır. Aynı çevrim sonunda yapılan işlemin devamlılığı için işlem_turu4’e işlem_turu3 atanır. Sonuç olarak totalde 26 çevrim süren işlemler için boruhattını sağlayan her bir değişkenden 26 tane bulunmakta ve her çevrim sonunda n. değişken (n+1).’ye atanmaktadır.
Ne için kullanıldıkları aşağıda açıklanmıştır.
Tasarımımız başta da belirtildiği üzere tek bir modülden oluşmaktadır. Bu sebepten ötürü tüm işlemler aynı sayıda çevrime sahip olmalıdır aksi taktirde ilk giren ilk çıkar ilkesi sağlanmamış olur. Aynı zamanda aynı amaç için ancak farklı işlemler için kullanılacak olan registerların bit sayıları da eşit olarak ayarlanmalıdır.
Tasarımda bulunan registerlar:

- exponent_sonucX: Çıkışa verilecek sonucun exponenti. İşlemin son çevriminde sonucun uygun yerine ataması yapılır.
- sign_sonucX: Çıkışa verilecek sonucun işaret biti. İşlemin son çevriminde sonucun uygun yerine ataması yapılır.
- islemX: Giriş olarak alınan buyruktan çekilmiş iki kayan nokta gösterimindeki sayıların mantissaları. Bulunduğu çevrimdeki işlem_turu değişkenine göre yapılacak değişiklikler farklılık gösterir. Tüm işlemlerden sonra çıkış olarak verilecek sonucun mantissasına eşit olur ve uygun yere ataması yapılır.
- islem_sonrakiX: islemX’te bir değişiklik yapıldığında bu değişikliği işlem(X+1)’e taşımakla görevlidir.
- islem_turuX: Buyruğun ilk iki bitinden elde edilen ve bulunduğu çevrimde uygun işlem yapılmasını sağlayan boruhattının ana parçalarından biri.
- sayi1_rX: 1. sayının mantissasının başlangıç değerlerini tutan ve islem değikenlerine doğru atamanın yapılmasında yardımcı olan değişken.
- sayi2_rX: 2. sayının mantissasının başlangıç değerlerini tutan ve islem değikenlerine doğru atamanın yapılmasında yardımcı olan değişken.
- bolme_yardimciX: Bölme işlemine özel olarak kullanılan yardımcı değişken.
- sonuc_bellegiX: İşlem sonucunun modül içerisinde depolanmasını sağlayan değişken.
- adresX: Buyruğun en anlamsız 13 bitinden elde edilen ve elde edilen sonucun sonuc_bellegi değişkeninin hangi kısmına kaydedileceğini tutan değişken.
- cikis_gecerliX: Anlamlı bir sonuç elde edildiğini haber veren, işlem bittiğinde cikis_gecerli çıkışına atanacak olan değer.

Tasarımı özetleyen diyagram:

![image](https://user-images.githubusercontent.com/63926077/209182251-f34751ea-84da-402e-9676-2a43b86497f7.png)

İşlem	Girişten Sonuç Çıkana Kadar Gereken Çevrim

Toplama	26
Çıkarma	26
Çarpma	26
Bölme	26



