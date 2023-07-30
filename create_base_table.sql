/*
Author: Hafidz Alawy
Date: 24/07/2024
Tool used: PostgreSQL 
*/

-- Membuat schema database
CREATE SCHEMA kimia_farma;

-- Membuat base table
CREATE TABLE kimia_farma.base_table AS
SELECT
    pjl.id_invoice || pjl.id_barang AS id_penjualan,
    pjl.id_distributor,
    pjl.id_cabang,
    pjl.id_invoice,
    pjl.id_barang,
    pjl.tanggal,
    pjl.jumlah_barang,
    pjl.brand_id,
    pjl.unit,
    pjl.harga,
    pjl.mata_uang,
    pjl.lini,
    plg.id_customer,
    plg."level",
    plg.nama,
    plg.id_cabang_sales,
    plg.cabang_sales,
    plg.id_group,
    plg."group",
    brg.kode_barang,
    brg.sektor,
    brg.nama_barang,
    brg.tipe,
    brg.nama_tipe,
    brg.kode_lini,
    brg.kemasan
FROM kimia_farma.penjualan pjl
LEFT JOIN kimia_farma.pelanggan plg
    ON pjl.id_customer = plg.id_customer
LEFT JOIN kimia_farma.barang brg
    ON pjl.id_barang = brg.kode_barang;

ALTER TABLE kimia_farma.base_table ADD PRIMARY KEY (id_penjualan);