<?php

namespace App\Http\Controllers\Export;

use DB;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\Exportable;

class ExcelLaporanAkhirPenelitian implements FromQuery
{
    use Exportable;

    public function query()
    {
        error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
        $data = DB::select('select users.nik as "NIK", users.name as "Nama", users.fakultas as "Fakultas", users.program_studi  as "Prodi", tb_usulan_penelitian.judul_penelitian as "Judul", tb_laporan_akhir_penelitian.lama_penelitian as "Lama Penelitian", tb_laporan_akhir_penelitian.file as "File", tb_laporan_akhir_penelitian.jenis_luaran as "Luaran Wajib", tb_laporan_akhir_penelitian.jenis_luaran1 as "Luaran Tambahan 1", tb_laporan_akhir_penelitian.jenis_luaran2 as "Luaran Tambahan 2", tb_laporan_akhir_penelitian.jenis_luaran3 as "Luaran Tambahan 3", tb_laporan_akhir_penelitian.tanggal as "Tanggal", tb_laporan_akhir_penelitian.status as "Status"
        FROM users
        JOIN tb_laporan_akhir_penelitian ON users.nik = tb_laporan_akhir_penelitian.id_dosen
        JOIN tb_usulan_penelitian ON tb_laporan_akhir_penelitian.judul_penelitian = tb_usulan_penelitian.id_usulan
        where tb_laporan_akhir_penelitian.status = ""
        group by tb_laporan_akhir_penelitian.id
        order by tb_laporan_akhir_penelitian.tanggal DESC');
        //dd($data);
        return collect($data);
    }
}
