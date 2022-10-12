# Penjelasan Pengerjaan Praktikum Modul 1
>Nama: Aurelio Killian Lexi Verrill  
>NRP: 5025211126  
  
# No 1
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya. 
- a  
Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi  sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ?  
  
  Soal ini dapat diselesaikan dengan menggunakan funsgsi ```dgeom()```. Fungsi ini akan mengeluarkan nilai dari density function distribusi geometrik. Parameter yang harus diberikan adalah ```n``` dan ```p``` yaitu berturut-turut merupakan banyaknya percobaan gagal sebelum percobaan sukses pertama dan peluang sukses suatu percobaan.  
  ```
  #SOAL NO 1

  p <- 0.2     #peluang sukses
  n <- 3       #banyaknya percobaan gagal

  #1a
  dgeom(n, p)
  ```
  ![Screenshot (2063)](https://user-images.githubusercontent.com/87407047/195298631-5e3b7588-0776-465c-8ab6-4bfd200765a9.png)
  
- b  
mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 ).  
  
    Soal ini dapat diselesaikan dengan menggunakan funsgi ```mean``` dan ```rgeom```. Fungsi dipanggil dengan ```mean(rgeom(n, p) == 3)``` dengan ```n``` merupakan banyaknya percobaan random dan ```p``` sebagai peluang sukses.  
    ```
    #1b
    n <- 1000
    set.seed(0)
    mean(rgeom(n, p) == 3)
    ```
    ![Screenshot (2064)](https://user-images.githubusercontent.com/87407047/195298637-24bc7c73-4a2f-4e49-aac6-714d00552007.png)
    
- c  
    Bandingkan hasil poin a dan b, apa kesimpulan yang bisa didapatkan?  
  
    Hasil yang didapatkan dari percobaan a berbeda dengan hasil percobaan b. Hal ini terjadi karena percobaan b merupakan percobaan random dengan perulangan yang besar.  

- d  
    Histogram Distribusi Geometrik , peluang X = 3 gagal sebelum sukses sertama.  
    
    Fungsi ```hist()``` dapat digunakan untuk menampilkan histogram. Fungsi tersebut dipanggil dengan memasukkan data random sebagai argumennya menggunakan ```rgeom(n, p)```.  
    ```
    #1d
    n <- 3
    set.seed(0)
    hist(rgeom(n, p))
    ```
    ![Screenshot (2065)](https://user-images.githubusercontent.com/87407047/195298640-0d762d31-9c28-40ef-916e-4b503d4963d9.png)
    
- e  
    Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.  
    
    Nilai rataan dan variansi dapat dicari menggunakan rumus.  
    ```
    #1e
    mean <- 1 / p
    variance <- (1 - p)/(p^2)
    mean        #rataan
    variance    #varian
    ```
    ![Screenshot (2066)](https://user-images.githubusercontent.com/87407047/195298648-b3ff4e40-143c-4cad-8f24-430d9ee2f0f1.png)
    
# No 2  
Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
- a  
    Peluang terdapat 4 pasien yang sembuh.  
    
    Soal ini dapat diselesaikan dengan menggunakan fungsi ```dbinom()```. Fungsi ini akan mengeluarkan nilai dari density function distribusi binomial. Parameter yang harus diberikan adalah ```k```, ```n```, dan ```p``` yaitu berturut-turut merupakan banyaknya percobaan sukses (banyaknya pasien sembuh), total banyaknya percobaan (total pasien), dam peluang sukses suatu percobaan (peluang sembuh).  
    ```
    #SOAL NO 2
    
    p <- 0.2
    k <- 4
    n <- 20
    
    #2a
    dbinom(k, n, p)
    ```
    ![Screenshot (2070)](https://user-images.githubusercontent.com/87407047/195306582-1bf3cb1b-7c5a-4e4b-83f9-aee99b19e038.png)
    
- b  
    Gambarkan grafik histogram berdasarkan kasus tersebut.  
    
    Fungsi ```hist()``` dapat digunakan untuk menampilkan histogram. Fungsi tersebut dipanggil dengan memasukkan data random sebagai argumennya menggunakan ```rbinom(k, n, p)```.  
    ```
    #2b
    set.seed(0)
    hist(rbinom(k, n, p))
    ```
    ![Screenshot (2071)](https://user-images.githubusercontent.com/87407047/195306592-9a67e8bf-258f-4291-b8b6-a882a927bb8c.png)

- c  
    Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.  
    
    Nilai rataan dan variansi dapat dicari menggunakan rumus.  
    ```
    #2c
    mean <- n * p
    variance <- n * p * (1 - p)
    mean        #rataan
    variance    #varian
    ```
    ![Screenshot (2072)](https://user-images.githubusercontent.com/87407047/195306598-a03dcf64-9a22-4295-b424-cca5c056b6de.png)
    
# No 3  
Diketahui data dari  sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)  
- a  
    Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?  
    
    Soal ini dapat diselesaikan dengan menggunakan fungsi ```dpois()```. Fungsi ini akan mengeluarkan nilai dari density function distribusi Poisson. Parameter yang harus diberikan adalah ```k``` dan ```lambda``` yaitu berturut-turut merupakan banyaknya percobaan sukses (banyaknya bayi lahir pada suatu hari) dan rata-rata percobaan sukses (rata-rata banyaknya bayi lahir per hari).  
    ```
    #SOAL NO 3

    lambda <- 4.5
    k <- 6
    
    #3a
    dpois(k, lambda)
    ```
    ![Screenshot (2073)](https://user-images.githubusercontent.com/87407047/195309880-242e75be-40b2-4482-9b98-08310eb5130b.png)

    
- b  
    Simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini  selama setahun (```n``` = ```365```)!  
    
    Fungsi ```hist()``` dapat digunakan untuk menampilkan histogram. Fungsi tersebut dipanggil dengan memasukkan data random sebagai argumennya menggunakan ```rpois(n, lambda)```.  
    ```
    #3b
    n <- 365
    set.seed(0)
    hist(rpois(n, lambda))
    ```
    ![Screenshot (2074)](https://user-images.githubusercontent.com/87407047/195309896-c796ef5c-1c3c-4de7-af0b-b679b494b493.png)

- c  
    Bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan?  
    
    Nilai pada poin a sudah cukup mirip dengan frekuensi relatif dari variabel random dengan nilai 6 pada histogram. Hal ini terjadi karena data pada histogram dihasilkan dengan fungsi ```rpois()``` yang akan membuat variabel random berdistribusi Poisson sesuai argumen yang dimasukkan. Dalam hal ini, poin c juga menggunakan nilai ```lambda``` yang sama yaitu ```4.5```.
- d  
    Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.  
    
    Nilai rataan dan variansi dapat dicari menggunakan rumus.  
    ```
    #3d
    variance <- mean <- lambda
    mean        #rataan
    variance    #varian
    ```
    ![Screenshot (2075)](https://user-images.githubusercontent.com/87407047/195309900-1a76a3d0-07a1-4381-acf0-10d0345de86d.png)
    
# No 4
Diketahui nilai x = 2 dan v = 10. Tentukan:  

- a  
    Fungsi Probabilitas dari Distribusi Chi-Square.  
    
    Soal ini dapat diselesaikan dengan menggunakan fungsi ```dchisq()```. Fungsi ini akan mengeluarkan nilai dari density function distribusi Chi-Square. Parameter yang harus diberikan adalah ```x``` dan ```v``` yaitu berturut-turut merupakan nilai kritis dan derajat kebebasan. Derajat kebebasan ini yang akan memengaruhi bentuk dari distribusi Chi-Square.  
    ```
    #SOAL NO 4
    
    x <- 2
    v <- 10
    
    #4a
    dchisq(x, v)
    ```
    ![Screenshot (2076)](https://user-images.githubusercontent.com/87407047/195313989-39b17114-070e-4e2f-b784-34c4d5378f68.png)

- b  
    Histogram dari Distribusi Chi-Square dengan 100 data random.  
    
    Fungsi ```hist()``` dapat digunakan untuk menampilkan histogram. Fungsi tersebut dipanggil dengan memasukkan data random sebagai argumennya menggunakan ```rchisq(n, v)```.  
    ```
    #4b
    n <- 100
    set.seed(0)
    hist(rchisq(n, v))
    ```
    ![Screenshot (2077)](https://user-images.githubusercontent.com/87407047/195314008-e5423f57-c9fd-44b1-94cd-c69dc4176bd5.png)

- c  
    Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.  
    
    Nilai rataan dan variansi dapat dicari menggunakan rumus.  
    ```
    #4c
    mean <- v
    variance <- 2 * v
    mean        #rataan
    variance    #varian
    ```
    ![Screenshot (2078)](https://user-images.githubusercontent.com/87407047/195314020-28a33f21-2b2f-4987-bb61-448bfdacfe0d.png)

# No 5
Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan
- a  
    Fungsi Probabilitas dari Distribusi Exponensial  
    
    Soal ini dapat diselesaikan dengan menggunakan fungsi ```dexp()```. Fungsi ini akan mengeluarkan nilai dari density function distribusi Eksponensial. Parameter yang harus diberikan adalah ```x``` dan ```lambda``` yaitu berturut-turut merupakan variabel acak dan ```rate``` yang akan memengaruhi bentuk grafik distribusi Eksponensial.  
    ```
    #SOAL NO 5
    
    lambda <- 3
    
    #5a
    dexp(2, lambda)
    ```
    ![Screenshot (2085)](https://user-images.githubusercontent.com/87407047/195321237-7ff316e3-8a4a-4016-a043-3dd1c67d5132.png)

- b  
    Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random  
    
    Fungsi ```hist()``` dapat digunakan untuk menampilkan histogram. Fungsi tersebut dipanggil dengan memasukkan data random sebagai argumennya menggunakan ```rexp(n, lambda)``` dengan ```n``` merupakan banyaknya data random yang ingin dihasilkan.  
    ```
    #5b
    set.seed(1)
    hist(rexp(10, lambda), main = "Histogram Exponential 10 bilangan random")
    hist(rexp(100, lambda), main = "Histogram Exponential 100 bilangan random")
    hist(rexp(1000, lambda), main = "Histogram Exponential 1000 bilangan random")
    hist(rexp(10000, lambda), main = "Histogram Exponential 10000 bilangan random")
    ```
    ![Screenshot (2086)](https://user-images.githubusercontent.com/87407047/195321242-3c1cead9-0f5e-42af-b947-eebfe671f153.png)
    ![Screenshot (2087)](https://user-images.githubusercontent.com/87407047/195321246-72eb13e4-2795-4118-8165-caf65ebfb729.png)
    ![Screenshot (2088)](https://user-images.githubusercontent.com/87407047/195321250-45e38fb4-5f11-4f5f-bbe1-bb2b3f380a84.png)
    ![Screenshot (2089)](https://user-images.githubusercontent.com/87407047/195321253-58ee569d-01b6-4147-a31c-8956bd9fdff6.png)
- c  
    Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3  
    
    Nilai rataan dan variansi dapat dicari menggunakan rumus.  
    ```
    #5c
    mean <- 1/lambda
    variance <- 1/(lambda^2)
    mean        #rataan
    variance    #varian
    ```
    ![Screenshot (2090)](https://user-images.githubusercontent.com/87407047/195321260-34d3c103-7c51-4835-a2a7-b7fe2796cf38.png)

# No 6
Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan
- a  
    Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
    Keterangan : X1 = Dibawah rata-rata, X2 = Diatas rata-rata  
    Contoh data : 1,2,4,2,6,3,10,11,5,3,6,8; rata-rata = 5.083333; X1 = 5; X2 = 6  
    
    Diketahui bahwa data yang dihasilkan adalah acak sebanyak ```100``` data dengan ```mean``` sama dengan ```50``` dan ```sd``` sama dengan ```8```. Maka hal pertama yang dilakukan adalah menggunakan fungsi ```rnorm()``` untuk membuat data acak dengan argumen seperti soal di atas. Nilai ```x1``` dan ```x2``` dapat dicari menggunakan ```for``` loop pada ```data``` yang sudah disortir. Nilai dari ```P(X1<=x<=X2)``` dapat dicari menggunakan fungsi ```pnorm()```. Nilai Z-Score tiap data dapat dicari menggunakan rumus dan grafik dapat dihasilkan dengan fungsi ```plot()```.  
    ```
    #SOAL NO 6
    
    n <- 100
    mean <- 50
    sd <- 8
    
    #6a
    set.seed(0)
    data <- rnorm(n, mean, sd)
    
    sorted_data <- sort(data)
    
    x1 <- x2 <- mean(data)
    
    for(index in 1:100){
        if(sorted_data[index]<=mean(data) && mean(data)<=sorted_data[index+1]){
           x1 <- sorted_data[index]
           x2 <- sorted_data[index+1]
           break
        }
    }
    
    sorted_data
    summary(data)
    
    x1
    mean(data)
    x2
    
    prob <- pnorm(x2, mean(data), sd(data)) - pnorm(x1, mean(data), sd(data))
    prob    #P(X1 <= x <= X2)
    
    z_scores <- (data - mean(data))/sd(data)
    z_scores    #Z-Score
    
    plot(data, main = "Random Data berdistribusi normal")
    ```
    ![Screenshot (2091)](https://user-images.githubusercontent.com/87407047/195326361-ba1db7b0-adcb-400f-8c72-cfd13794acb2.png)

- b  
    Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan: 
    NRP_Nama_Probstat_{Nama Kelas}_DNhistogram. Contoh :312312312_Rola_Probstat_A_DNhistogram  
    
    Fungsi ```hist()``` dapat digunakan untuk menampilkan histogram. Fungsi tersebut dipanggil dengan memasukkan data random dan ```breaks``` sebagai argumennya.  
    ```
    #6b
    breaks <- 50
    hist(data, breaks, main = "5025211126_Aurelio Killian Lexi Verrill_Probstat_A_DNhistogram")
    ```
    ![Screenshot (2092)](https://user-images.githubusercontent.com/87407047/195326372-46c5f036-f607-405a-94f0-c8a9abd02a1d.png)


- c  
    Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.  
    
    Variansi dari data berdistribusi normal dapat langsung dicari menggunakan fungsi ```var()```.     
    ```
    #6c
    var(data)   #variansi distribusi normal
    ```
    ![Screenshot (2093)](https://user-images.githubusercontent.com/87407047/195326378-eed42762-04bf-4508-baf8-53a39936299e.png)

    
   
   
# Terima Kasih




