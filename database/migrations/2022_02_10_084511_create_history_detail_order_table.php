<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHistoryDetailOrderTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('history_detail_order', function (Blueprint $table) {
            $table->id();
            $table->string('invoice_number');
            $table->bigInteger('product_id')->unsigned();
            $table->integer('quantity');
            $table->integer('discount');
            $table->bigInteger('total_price');
            $table->text('description');
            $table->timestamps();

            $table->foreign('invoice_number')->references('invoice_number')->on('history_order')->onUpdate('cascade')
            ->onDelete('cascade');
            $table->foreign('product_id')->references('id')->on('product')->onUpdate('cascade')
            ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('history_detail_order');
    }
}
