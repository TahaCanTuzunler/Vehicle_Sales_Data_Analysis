# 🚗 Car Sales Data Analytics & BI Dashboard

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![DAX](https://img.shields.io/badge/DAX-00529B?style=for-the-badge&logo=microsoft&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-003B57?style=for-the-badge&logo=mysql&logoColor=white)

Driven by a strong passion for automotive dynamics and data science, this project transforms over 500,000 raw vehicle sales records into an interactive Business Intelligence dashboard. It aims to uncover market trends, pricing strategies, and top-performing models to support data-driven decision-making in the automotive sector.

### 📊 Dataset (Veriseti)
The raw vehicle sales dataset used in this project was obtained from Kaggle. 
🔗 **Data Source:** [Kaggle - Vehicle Sales Data](https://www.kaggle.com/datasets/syedanwarafridi/vehicle-sales-data)

---

### 📂 Project Architecture & Modular Structure
The project is built with a modular approach, reflecting enterprise-level engineering standards:

*   **`data_import_cleaning/`**: SQL scripts for cleaning, normalizing, and preparing raw sales data.
*   **`data_modelling/`**: Relational database design separating Fact and Dimension tables to establish a robust Star Schema architecture.
*   **`Power_BI/`**: The BI layer containing the `.pbix` file, DAX measures, and interactive visualizations.

### 📊 Visual Showcase

#### 1. Data Architecture (Star Schema)
The foundation of the analysis relies on a well-structured Star Schema connected via foreign keys, ensuring optimized query performance and accurate DAX calculations.

![Star Schema](./Power_BI/power_bi_first.png) 

#### 2. Executive Dashboard (v2.0: Interactive Release)
The front-end interface has been upgraded to a fully interactive Executive Summary level. 
**Key additions in this version:**
* **Financial Quarter Slicers (Q1-Q4):** Premium UI buttons allowing rapid drill-down into specific financial periods without cluttering the screen.
* **Cross-Filtering:** Seamless interaction between the Top N Model volume bar chart and the price trend analysis.
* **Dynamic Price Trends:** A smoothed time-series line chart tracking the average value of vehicles across months and years.

![Dashboard v2](./Power_BI/dashboard_v2.png)

### 🚧 Work in Progress 

---
---

# 🚗 Araç Satış Veri Analitiği ve İş Zekası (BI) Panosu

Otomotiv dinamiklerine ve veri bilimine olan güçlü ilgimden yola çıkarak tasarladığım bu proje, 500.000'den fazla ham araç satış kaydını etkileşimli bir İş Zekası panosuna dönüştürmektedir. Otomotiv sektöründe veri odaklı karar almayı desteklemek amacıyla pazar trendlerini, fiyatlandırma stratejilerini ve en çok satan modelleri ortaya çıkarmayı hedeflemektedir.

### 📂 Proje Mimarisi ve Modüler Yapı
Proje, kurumsal mühendislik standartlarını yansıtacak şekilde modüler bir yapıda inşa edilmiştir:

*   **`data_import_cleaning/`**: Ham satış verisini temizlemek, standartlaştırmak ve hazırlamak için kullanılan SQL betikleri.
*   **`data_modelling/`**: Sağlam bir Yıldız Şema (Star Schema) mimarisi kurmak için Fact ve Dimension tablolarını ayıran ilişkisel veritabanı tasarımı.
*   **`Power_BI/`**: `.pbix` dosyasını, DAX ölçülerini ve etkileşimli görselleştirmeleri içeren İş Zekası katmanı.

### 📊 Görsel Vitrin

#### 1. Veri Mimarisi (Star Schema)
Analizin temeli, optimize edilmiş sorgu performansı ve doğru DAX hesaplamaları sağlamak için foreign key'ler ile birbirine bağlanan iyi yapılandırılmış bir Yıldız Şema'ya dayanmaktadır.

![Star Schema](./Power_BI/power_bi_first.png) 

#### 2. Yönetici Özeti Dashboard (v2.0: İnteraktif Sürüm)
Ön yüz arayüzü, tam etkileşimli bir Yönetici Özeti seviyesine yükseltildi. 
**Bu sürümdeki temel eklemeler:**
* **Finansal Çeyrek Butonları (Q1-Q4):** Ekranı karmaşıklaştırmadan belirli finansal dönemlere hızlıca odaklanmayı sağlayan premium arayüz dilimleyicileri.
* **Çapraz Filtreleme (Cross-Filtering):** Marka/Model satış hacmi grafiği ile fiyat trendi analizi arasında kusursuz ve anlık etkileşim.
* **Dinamik Zaman Trendleri:** Araçların aylar ve yıllar içindeki ortalama değerini takip eden, kurumsal tasarıma uygun zaman serisi çizgi grafiği.

![Dashboard v2](./Power_BI/dashboard_v2.png)

### 🚧 Geliştirme Aşamasında 
