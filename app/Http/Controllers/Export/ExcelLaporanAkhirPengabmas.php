<?php

namespace App\Http\Controllers\Export;

use DB;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\Exportable;

class ExcelLaporanAkhirPengabmas implements FromQuery
{
    use Exportable;

    public function query()
    {
        error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
        $data = DB::select('select users.nik as "NIK", users.name as "Nama", users.fakultas as "Fakultas", users.program_studi  as "Prodi", tb_usulan_pengabmas.judul_pengabmas as "Judul", tb_laporan_akhir_pengabmas.lama_pengabmas as "Lama pengabmas", tb_laporan_akhir_pengabmas.file as "File", tb_laporan_akhir_pengabmas.jenis_luaran as "Luaran Wajib", tb_laporan_akhir_pengabmas.jenis_luaran1 as "Luaran Tambahan 1", tb_laporan_akhir_pengabmas.jenis_luaran2 as "Luaran Tambahan 2", tb_laporan_akhir_pengabmas.jenis_luaran3 as "Luaran Tambahan 3", tb_laporan_akhir_pengabmas.tanggal as "Tanggal", tb_laporan_akhir_pengabmas.status as "Status"
        FROM users
        JOIN tb_laporan_akhir_pengabmas ON users.nik = tb_laporan_akhir_pengabmas.id_dosen
        JOIN tb_usulan_pengabmas ON tb_laporan_akhir_pengabmas.judul_pengabmas = tb_usulan_pengabmas.id_usulan
        where tb_laporan_akhir_pengabmas.status = ""
        group by tb_laporan_akhir_pengabmas.id
        order by tb_laporan_akhir_pengabmas.tanggal DESC');
        //dd($data);
        return collect($data);
    }
}
