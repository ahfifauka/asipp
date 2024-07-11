<?php

namespace App\Http\Controllers\Export;

use DB;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\Exportable;

class ExcelLaporanKemajuanPenelitian implements FromQuery
{
    use Exportable;

    public function query()
    {
        error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
        $data = DB::select('select users.nik as "NIK", users.name as "Nama", users.fakultas as "Fakultas", users.program_studi  as "Prodi", tb_usulan_penelitian.judul_penelitian as "Judul",  tb_laporan_kemajuan_penelitian.presentase_kemajuan as "Presentase Kemajuan", tb_laporan_kemajuan_penelitian.file as "File", tb_laporan_kemajuan_penelitian.jenis_berkas as "Jenis Berkas", tb_laporan_kemajuan_penelitian.tanggal as "Tanggal", tb_laporan_kemajuan_penelitian.status as "Status"
        FROM users
        JOIN tb_laporan_kemajuan_penelitian ON users.nik = tb_laporan_kemajuan_penelitian.id_dosen
        JOIN tb_usulan_penelitian ON tb_laporan_kemajuan_penelitian.judul_penelitian = tb_usulan_penelitian.id_usulan
        group by tb_laporan_kemajuan_penelitian.id
        order by tb_laporan_kemajuan_penelitian.tanggal DESC');
        //dd($data);
        return collect($data);
    }
}
