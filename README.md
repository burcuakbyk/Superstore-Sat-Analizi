# 📊 Superstore Satış Analizi

## Proje Amacı

Bu projede Superstore satış verileri Excel, SQL ve Power BI kullanılarak analiz edilmiştir.

Amaç, aşağıdaki iş problemini cevaplamaktır:

"Şirket satışlarını ve kârlılığını artırmak için hangi ürünlere, müşterilere ve bölgelere odaklanmalıdır?"

---

## Kullanılan Araçlar

- Excel
- SQL Server
- Power BI
- GitHub

---

## Veri Temizleme

- CSV dosyası Excel'e aktarıldı.
- Veri tipleri kontrol edildi.
- Boş değerler incelendi.
- Yinelenen kayıtlar kontrol edildi.
- Tarih formatı düzenlendi.

---

## Yapılan Analizler

- Bölge Analizi
- Kategori Analizi
- Alt Kategori Analizi
- Ürün Analizi
- Müşteri Analizi
- İndirim Analizi
- Zaman Analizi

---
### 📊 Bölge Analizi

#### Amaç

Şirketin hangi bölgelerde daha yüksek satış ve kârlılık elde ettiğini belirlemek.

#### Kullanılan Alanlar

- Region
- Sales
- Profit

#### Bulgular

| Bölge | Toplam Satış | Toplam Kâr |
|--------|-------------:|-----------:|
| West | 437.608,54 | 67.860,56 |
| East | 393.768,73 | 53.372,16 |
| Central | 294.527,50 | 27.450,01 |
| South | 216.516,08 | 26.551,72 |

#### Analiz Sonuçları

- **West** bölgesi hem satış hem de kârlılık açısından en başarılı bölgedir.
- **East** bölgesi ikinci sırada yer almakta olup güçlü bir performans sergilemektedir.
- **Central** bölgesi orta seviyede satış ve kârlılık değerlerine sahiptir.
- **South** bölgesi satış ve kârlılık açısından en düşük performansı göstermektedir.

#### İş Önerileri

- West bölgesinde uygulanan başarılı satış stratejileri incelenerek diğer bölgelere uyarlanabilir.
- East bölgesinde büyümeyi destekleyecek pazarlama ve müşteri kazanım çalışmaları planlanabilir.
- Central bölgesinde satış performansını artırmak için ürün ve müşteri analizleri yapılabilir.
- South bölgesinde düşük performansın nedenleri araştırılarak bölgeye özel satış ve pazarlama stratejileri geliştirilebilir.

#### Sonuç

Bölge analizi sonucunda **West** bölgesinin hem satış hem de kârlılık açısından şirketin en güçlü bölgesi olduğu görülmektedir. **South** bölgesi ise en düşük performansı gösterdiğinden, bu bölgeye yönelik iyileştirme çalışmaları şirketin genel performansını artırabilir.

### 📊 Kategori Analizi

#### Amaç

Şirketin hangi ürün kategorilerinin satış ve kârlılık açısından daha başarılı olduğunu belirlemek.

#### Kullanılan Alanlar

- Category
- Sales
- Profit

#### Bulgular

| Kategori | Toplam Satış | Toplam Kâr |
|----------|-------------:|-----------:|
| Technology | 498.094,99 | 90.458,25 |
| Office Supplies | 430.037,16 | 74.797,85 |
| Furniture | 414.288,71 | 9.978,34 |

#### Analiz Sonuçları

- **Technology** kategorisi hem satış hem de kârlılık açısından ilk sırada yer almaktadır.
- **Office Supplies** kategorisi satış ve kârlılık açısından istikrarlı bir performans göstermektedir.
- **Furniture** kategorisi yüksek satış hacmine sahip olmasına rağmen oldukça düşük kârlılık sağlamaktadır.

#### İş Önerileri

- Technology kategorisindeki başarılı ürünlere yönelik satış ve pazarlama faaliyetleri artırılabilir.
- Office Supplies kategorisindeki mevcut performans korunmalı ve büyüme fırsatları değerlendirilmelidir.
- Furniture kategorisindeki düşük kârlılığın nedenleri alt kategori ve ürün bazında detaylı olarak incelenmelidir.

#### Sonuç

Kategori analizi sonucunda, şirketin en güçlü kategorisinin **Technology** olduğu görülmektedir. **Furniture** kategorisi ise yüksek satış hacmine rağmen düşük kârlılık göstermektedir. Bu nedenle, şirketin kârlılığını artırmak için öncelikle Furniture kategorisindeki ürünlerin maliyet yapısı ve satış stratejileri analiz edilmelidir.
💡 Benim küçük bir önerim

### 📊 Alt Kategori Analizi

#### Amaç

Ürün alt kategorilerinin satış ve kârlılık performansını inceleyerek şirket için en başarılı ve geliştirilmesi gereken alt kategorileri belirlemek.

#### Kullanılan Alanlar

- Sub-Category
- Sales
- Profit

#### Bulgular

| Alt Kategori | Toplam Satış | Toplam Kâr |
|--------------|-------------:|-----------:|
| Phones | 184.302,55 | 22.308,92 |
| Chairs | 179.473,00 | 13.406,70 |
| Storage | 128.466,32 | 13.607,09 |
| Binders | 122.471,37 | 17.885,38 |
| Tables | 121.726,74 | -11.091,64 |
| Copiers | 112.498,80 | 42.774,58 |
| Accessories | 101.842,09 | 25.336,65 |
| Machines | 99.451,56 | 38,10 |
| Appliances | 68.977,25 | 13.166,61 |
| Furnishings | 56.789,22 | 8.034,43 |
| Bookcases | 56.299,75 | -371,16 |
| Paper | 48.356,61 | 21.112,38 |
| Supplies | 30.326,99 | -1.654,28 |
| Art | 14.823,98 | 3.635,93 |
| Envelopes | 8.108,46 | 3.508,51 |
| Labels | 6.688,46 | 2.937,22 |
| Fasteners | 1.817,73 | 599,02 |

#### Analiz Sonuçları

- **Phones** alt kategorisi en yüksek satış hacmine sahiptir.
- **Copiers** alt kategorisi, satış sıralamasında üst sıralarda yer almasının yanında en yüksek kârı sağlayan alt kategoridir.
- **Tables** alt kategorisi yüksek satış hacmine rağmen zarar etmektedir.
- **Bookcases** ve **Supplies** alt kategorileri de negatif kârlılık göstermektedir.
- **Machines** alt kategorisinin satış hacmi yüksek olmasına rağmen kârlılığı oldukça düşüktür. Bu durum fiyatlandırma, maliyet veya ürün karmasının incelenmesi gerektiğini göstermektedir.

#### İş Önerileri

- Copiers ve Phones alt kategorilerindeki başarılı ürünlerin satışını artıracak pazarlama çalışmaları planlanabilir.
- Tables alt kategorisindeki zarar nedenleri detaylı olarak incelenmeli; fiyatlandırma, maliyet ve satış stratejileri gözden geçirilmelidir.
- Bookcases ve Supplies alt kategorileri için maliyet analizi yapılarak kârlılığı artıracak iyileştirmeler değerlendirilebilir.
- Machines alt kategorisinin düşük kârlılık nedeni araştırılarak ürün bazında performans analizi yapılmalıdır.

#### Sonuç

Alt kategori analizi, satış hacmi ile kârlılığın her zaman birlikte artmadığını göstermektedir. Özellikle **Tables** alt kategorisi yüksek satış yapmasına rağmen zarar oluştururken, **Copiers** daha düşük satış hacmiyle en yüksek kârı sağlamaktadır. Bu nedenle şirket yalnızca satış miktarına değil, kârlılığa da odaklanarak ürün stratejilerini şekillendirmelidir.

### 📊 Segment Analizi

#### Amaç

Şirketin farklı müşteri segmentlerinin satış ve kârlılık performansını karşılaştırarak hangi müşteri grubunun şirkete daha fazla katkı sağladığını belirlemek.

#### Kullanılan Alanlar

- Segment
- Sales
- Profit

#### Bulgular

| Müşteri Segmenti | Toplam Satış | Toplam Kâr |
|------------------|-------------:|-----------:|
| Consumer | 628.768,60 | 81.339,19 |
| Corporate | 448.954,19 | 57.777,53 |
| Home Office | 264.698,07 | 36.117,72 |

#### Analiz Sonuçları

- **Consumer** segmenti hem satış hem de kârlılık açısından en başarılı müşteri grubudur.
- **Corporate** segmenti ikinci sırada yer almakta ve şirket için önemli bir gelir kaynağı oluşturmaktadır.
- **Home Office** segmenti en düşük satış ve kârlılık değerlerine sahip olmasına rağmen pozitif kârlılık sağlamaktadır.
- Tüm müşteri segmentleri kâr ürettiği için şirketin müşteri portföyü dengeli bir yapı göstermektedir.

#### İş Önerileri

- Consumer segmentine yönelik müşteri sadakat programları ve kampanyalar geliştirilerek mevcut başarı sürdürülebilir.
- Corporate segmentinde yeni kurumsal müşteri kazanımına yönelik satış ve pazarlama faaliyetleri artırılabilir.
- Home Office segmentinde satış hacmini artırmaya yönelik hedefli kampanyalar planlanabilir.

#### Sonuç

Segment analizi sonucunda, **Consumer** segmentinin şirketin en önemli müşteri grubu olduğu görülmektedir. Bununla birlikte **Corporate** ve **Home Office** segmentleri de pozitif kârlılık sağlamaktadır. Şirket, her segment için farklı satış ve pazarlama stratejileri geliştirerek toplam satış ve kârlılığını artırabilir.

### 📊 Müşteri Analizi

#### Amaç

Şirkete en fazla satış ve kâr sağlayan müşterileri belirleyerek müşteri değerini analiz etmek.

#### Kullanılan Alanlar

- Customer Name
- Sales
- Profit

#### Bulgular

| Müşteri | Toplam Satış | Toplam Kâr |
|---------|-------------:|-----------:|
| Tamara Chand | 18.344,05 | 8.764,95 |
| Raymond Buch | 15.117,34 | 6.976,10 |
| Tom Ashbrook | 13.807,77 | 4.523,36 |
| Adrian Barton | 12.694,91 | 5.088,94 |
| Christopher Conant | 12.129,07 | 2.177,05 |
| Sanjit Engle | 11.424,98 | 2.436,95 |
| Caroline Jumper | 11.164,97 | 858,74 |
| Hunter Lopez | 10.979,11 | 5.174,40 |
| Karen Ferguson | 9.999,27 | 1.577,61 |
| Seth Vernon | 9.501,15 | 1.610,00 |

#### Analiz Sonuçları

- **Tamara Chand**, hem satış hem de kârlılık açısından şirketin en değerli müşterisidir.
- **Raymond Buch** ve **Tom Ashbrook** da yüksek satış hacmiyle şirketin önemli müşterileri arasında yer almaktadır.
- Bazı müşteriler yüksek satış hacmine sahip olmasına rağmen kârlılık açısından diğer müşterilere göre daha düşük performans göstermektedir.
- En değerli müşterilerin belirlenmesi, müşteri ilişkileri yönetimi açısından önemli bir avantaj sağlar.

#### İş Önerileri

- En yüksek satış ve kâr sağlayan müşteriler için müşteri sadakat programları geliştirilebilir.
- Değerli müşterilere özel kampanyalar ve avantajlar sunularak müşteri bağlılığı artırılabilir.
- Yüksek satış yapan ancak düşük kârlılık sağlayan müşterilerin sipariş yapıları incelenerek kârlılığı artıracak stratejiler geliştirilebilir.

#### Sonuç

Müşteri analizi sonucunda, şirket gelirinin önemli bir kısmının belirli müşterilerden elde edildiği görülmektedir. Mevcut değerli müşterilerin korunması ve benzer profilde yeni müşterilerin kazanılması, şirketin sürdürülebilir büyümesine katkı sağlayacaktır.

### 📊 Ürün Analizi

#### Amaç

Şirkete en fazla satış ve kâr sağlayan ürünleri belirleyerek ürün performansını değerlendirmek.

#### Kullanılan Alanlar

- Product Name
- Sales
- Profit

#### Bulgular

| Ürün | Toplam Satış | Toplam Kâr |
|------|-------------:|-----------:|
| Canon imageCLASS 2200 Advanced Copier | 61.599,82 | 25.199,93 |
| Hewlett Packard LaserJet 3310 Copier | 16.079,73 | 6.407,89 |
| 3D Systems Cube Printer, 2nd Generation, Magenta | 14.299,89 | 3.717,97 |
| GBC Ibimaster 500 Manual ProClick Binding System | 13.621,54 | 1.826,35 |
| GBC DocuBind TL300 Electric Binding System | 12.737,26 | 2.753,76 |
| GBC DocuBind P400 Electric Binding System | 12.521,11 | 762,15 |
| Samsung Galaxy Mega 6.3 | 12.263,71 | 1.696,76 |
| HON 5400 Series Task Chairs for Big and Tall | 11.846,56 | 70,10 |
| Martin Yale Chadless Opener Electric Letter Opener | 11.825,90 | -1.232,56 |
| Global Troy Executive Leather Low-Back Tilter | 10.169,89 | 776,52 |

#### Analiz Sonuçları

- **Canon imageCLASS 2200 Advanced Copier**, hem satış hem de kârlılık açısından en başarılı üründür.
- Yazıcı ve fotokopi ürünleri (Copiers) şirketin en yüksek kâr sağlayan ürünleri arasında yer almaktadır.
- **Martin Yale Chadless Opener Electric Letter Opener** yüksek satış hacmine rağmen zarar etmektedir.
- **HON 5400 Series Task Chairs for Big and Tall** yüksek satış yapmasına rağmen oldukça düşük kâr sağlamaktadır.

#### İş Önerileri

- Yüksek kârlılık sağlayan ürünlerin stok ve pazarlama planlamasına öncelik verilmelidir.
- Zarar eden veya çok düşük kârlılık sağlayan ürünlerin fiyatlandırma ve maliyet yapısı gözden geçirilmelidir.
- En başarılı ürünlerin benzer modelleri veya tamamlayıcı ürünleri ön plana çıkarılarak satış hacmi artırılabilir.

#### Sonuç

Ürün analizi, tüm yüksek satış hacmine sahip ürünlerin yüksek kârlılık sağlamadığını göstermektedir. Özellikle yüksek satış yapmasına rağmen düşük veya negatif kârlılık gösteren ürünler detaylı olarak incelenmeli, şirketin ürün portföyü kârlılık odaklı yönetilmelidir.

## Dashboard

(Buraya Power BI ekran görüntülerini ekleyeceğiz.)

---

## Sonuç
