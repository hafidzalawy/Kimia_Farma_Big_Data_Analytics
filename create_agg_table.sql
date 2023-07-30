-- Membuat Aggregate table

CREATE TABLE kimia_farma.aggregate_table AS
SELECT
    tanggal,
    id_customer,
    id_distributor,
    brand_id,
    lini AS brand,
    id_penjualan,
    nama_barang,
    kemasan,
    nama AS customer,
    id_cabang,
    cabang_sales,
    harga,
    SUM(jumlah_barang) AS total_barang_terjual,
    AVG(harga) AS rata_rata_harga,
    SUM(jumlah_barang * harga) AS total_penjualan
	
FROM kimia_farma.base_table

GROUP BY
    1,2,3,4,5,6,7,8,9,10,11,12;