<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePersonnelsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('personnels', function (Blueprint $table) {
            $table->increments('id');
            $table->string('NomPers',45);
            $table->string('PrenomPers',100);
            $table->char('SexePers',1);
            $table->string('TelephonePers',20);
            $table->string('AdressePers',100);
            $table->string('EmailPers',200);
            $table->integer('poste_id');
            $table->foreign('poste_id')->references('id')->on('postes')->onDelete('cascade')->onUpdate('cascade');
            $table->timestamps();
            $table->SoftDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('personnels');
    }
}
