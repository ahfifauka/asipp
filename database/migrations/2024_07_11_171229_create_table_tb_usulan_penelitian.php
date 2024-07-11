<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableTbUsulanPenelitian extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tb_usulan_penelitian', function (Blueprint $table) {
            $table->id();
            $table->foreignId('id_usulan');
            $table->string('nama_ketua');
            $table->string('anggota_internal1');
            $table->string('anggota_internal2');
            $table->string('anggota_internal3');
            $table->string('anggota_internal4');
            $table->string('anggota_eksternal1');
            $table->string('anggota_eksternal2');
            $table->string('anggota_eksternal3');
            $table->string('anggota_eksternal4');
            $table->string('judul_penelitian');
            $table->string('jenis_penelitian');
            $table->string('nama_institusi');
            $table->string('alamat');
            $table->string('tahun_pelaksanaan');
            $table->string('biaya_mandiri');
            $table->string('biaya_hibah_pt');
            $table->string('biaya_hibah_luar');
            $table->string('pemberi_hibah');
            $table->bigInteger('id_dosen');
            $table->date('tanggal');
            $table->int('user_confirm');
            $table->string('luaran_wajib');
            $table->string('luaran_tambahan');
            $table->string('mahasiswa');
            $table->string('alumni');
            $table->string('admin');
            $table->date('created_at');
            $table->date('updated_at');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tb_usulan_penelitian', function (Blueprint $table) {
            //
        });
    }
}
