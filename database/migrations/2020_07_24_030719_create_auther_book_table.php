<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAutherBookTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('auther_book', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('auther_id')->unsigned();
            $table->integer('book_id')->unsigned();
            $table->foreign('auther_id')->references('id')->on('authers');
            $table->foreign('book_id')->references('id')->on('books');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('auther_book');
    }
}
