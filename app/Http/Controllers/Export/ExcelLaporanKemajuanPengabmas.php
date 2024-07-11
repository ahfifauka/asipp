<?php

namespace App\Http\Controllers\Export;

use DB;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\Exportable;

class ExcelLaporanKemajuanPengabmas implements FromQuery
{
    use Exportable;

    public function query()
    {
        error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
        $data = DB::select('select users.nik as "NIK", users.name as "Nama", users.fakultas as "Fakultas", users.program_studi  as "Prodi", tb_usulan_pengabmas.judul_pengabmas as "Judul",  tb_laporan_kemajuan_pengabmas.presentase_kemajuan as "Presentase Kemajuan", tb_laporan_kemajuan_pengabmas.file as "File", tb_laporan_kemajuan_pengabmas.jenis_berkas as "Jenis Berkas", tb_laporan_kemajuan_pengabmas.tanggal as "Tanggal", tb_laporan_kemajuan_pengabmas.status as "Status"
        FROM users
        JOIN tb_laporan_kemajuan_pengabmas ON users.nik = tb_laporan_kemajuan_pengabmas.id_dosen
        JOIN tb_usulan_pengabmas ON tb_laporan_kemajuan_pengabmas.judul_pengabmas = tb_usulan_pengabmas.id_usulan
        group by tb_laporan_kemajuan_pengabmas.id
        order by tb_laporan_kemajuan_pengabmas.tanggal DESC');
        //dd($data);
        return collect($data);
    }
}
