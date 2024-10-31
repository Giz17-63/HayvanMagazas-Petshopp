Evcil Hayvan Mağazası Veritabanı Projesi Gereksinimleri
Bu proje kapsamında, bir evcil hayvan mağazası için bir veritabanı tasarlanacaktır. Proje, veritabanında olması gereken özellikleri ve yapılacak işlemleri detaylı bir şekilde açıklamaktadır. Bu kapsamda, projede hangi varlıkların olacağı, bu varlıkların niteliklerinin ne olacağı, bu varlıklar arasında kurulacak ilişkiler ve bu ilişkilerdeki sayısal kısıtlamalar (1:1, 1
, n
gibi) belirtilecektir. Örneğin, bir müşteri birden fazla sipariş verebilecek ancak her sipariş yalnızca bir müşteri tarafından yapılabilecektir. Ayrıca, varlıkların niteliklerine dair kısıtlamalar da projede detaylandırılacaktır.
Gereksinimler, farklı kullanıcı türlerine göre ve projenin konusunu kapsamlı bir şekilde ele alabilecek şekilde belirlenmiştir. Bu gereksinimler, evcil hayvan mağazası işletmesiyle ilgili farklı kullanıcı rolleri ve ihtiyaçlarını karşılayacak bir yapıda oluşturulmuştur.
1. Varlıklar ve Nitelikleri
Proje kapsamında belirlenen temel varlıklar ve bunların nitelikleri şu şekildedir:
•	Hayvanlar: Her bir evcil hayvan için ID, ad, tür, cins, yaş, sağlık durumu ve fiyat gibi bilgiler yer alacaktır.
•	Kategoriler ve Alt Kategoriler: Hayvan türleri ve cinsleri gibi bilgileri tutmak amacıyla kategori ve alt kategori tabloları oluşturulacaktır.
•	Çalışanlar: Mağazada çalışan personel bilgileri (ID, ad, telefon, maaş, komisyon oranı vb.) yer alacaktır.
•	Müşteriler: Müşteri bilgileri (ID, ad, telefon, e-posta gibi) saklanacaktır.
•	Siparişler: Müşterilerin verdiği sipariş bilgileri (ID, müşteri ID, hayvan ID, sipariş tarihi, ödeme durumu vb.) tutulacaktır.
•	Sipariş Detayları: Siparişlerde yer alan her bir ürünle ilgili detaylı bilgiler yer alacaktır.
•	Tedarikçiler: Hayvan ve ürünlerin temin edildiği tedarikçiler hakkında bilgi saklanacaktır.
•	Ürünler ve Ürün Tedarikçileri: Evcil hayvan ürünleri, yem ve diğer mağaza malzemeleriyle ilgili detaylar tutulacaktır.
2. İlişkiler ve Kısıtlamalar
Varlıklar arasında belirlenen ilişkiler ve kısıtlamalar şu şekildedir:
•	Hayvanlar ve Kategoriler: Her hayvan bir kategoriye ve bir alt kategoriye bağlıdır.
•	Müşteriler ve Siparişler: Bir müşteri birden fazla sipariş verebilir (1
ilişki), ancak her sipariş tek bir müşteri tarafından yapılır.
•	Siparişler ve Sipariş Detayları: Her siparişin birden fazla detay kaydı olabilir (1
ilişki).
•	Ürünler ve Tedarikçiler: Her ürün bir veya birden fazla tedarikçiden temin edilebilir (n
ilişki).
•	Çalışanlar ve Performans: Çalışanların performans bilgileri takip edilir.
3. Fonksiyonel Gereksinimler
Projenin fonksiyonel gereksinimleri aşağıdaki şekilde tanımlanmıştır:
•	Evcil Hayvan Yönetimi: Hayvanların eklenmesi, güncellenmesi ve silinmesi işlemleri yapılacaktır.
•	Çalışan Yönetimi: Çalışan ekleme, silme, maaş ve performans takibi gibi işlemler gerçekleştirilecektir.
•	Müşteri Yönetimi: Müşteri bilgilerini saklama ve güncelleme imkanı sağlanacaktır.
•	Sipariş Yönetimi: Siparişlerin oluşturulması, iptali ve durumu hakkında bilgi sağlanacaktır.
•	Tedarikçi Yönetimi: Tedarikçilerin eklenmesi ve ürün tedarik süreçlerinin yönetimi yapılacaktır.
•	Kategori ve Alt Kategori Yönetimi: Hayvan türleri ve cinslerinin düzenlenmesi sağlanacaktır.
•	Raporlama ve Analiz: Satış, müşteri ve envanter analizleri için raporlar oluşturulacaktır.
4. Kullanıcı Rolleri ve Gereksinimler
Proje kapsamında farklı kullanıcı türlerine göre belirlenen gereksinimler şu şekildedir:
•	Müşteri: Müşteri, mağazada sunulan evcil hayvanları görüntüleyebilir, kendi bilgilerini güncelleyebilir ve sipariş verebilir. Her sipariş yalnızca tek bir müşteri tarafından yapılabilecektir.
•	Çalışan: Çalışanlar, mağazadaki hayvanların ve ürünlerin bilgilerini yönetebilir ve müşterilere destek verebilir.
•	Yönetici: Yöneticiler, çalışan ve müşteri bilgilerini güncelleyebilir, çalışan performansını takip edebilir, hayvan ve ürün stoklarını düzenleyebilir ve raporlar alabilir.
5. Güvenlik Gereksinimleri
•	Veritabanına erişim yetkileri belirlenmelidir.
•	Çalışan bilgileri ve maaş gibi hassas veriler korunmalıdır.
•	SQL enjeksiyon gibi güvenlik tehditlerine karşı önlem alınmalıdır.
6. Kullanılabilirlik Gereksinimleri
•	Veritabanının optimize edilmesi ve yüksek performanslı çalışması sağlanmalıdır.
•	Veri yedekleme ve kurtarma işlemleri düzenli olarak yapılmalıdır.
Bu gereksinimler, evcil hayvan mağazası veritabanının kullanıcı dostu, güvenli ve kapsamlı bir yapıda işleyebilmesi için oluşturulmuştur.

