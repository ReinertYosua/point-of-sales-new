<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHistoryOrderTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('history_order', function (Blueprint $table) {
            $table->id();
            $table->string('invoice_number')->unique();
            $table->foreignId('customer_id')->unsigned();
            $table->date('date_order');
            $table->foreignId('term_payment');//date
            $table->text('desc_order');
            $table->date('sent_date');
            $table->text('sent_address');
            $table->enum('transaction_status', ['proses', 'selesai']);//process, finish
            $table->integer('tax');
            $table->bigInteger('grand_total');
            $table->timestamps();

            $table->foreign('customer_id')->references('id')->on('customer')->onUpdate('cascade')
            ->onDelete('cascade');
            $table->foreign('term_payment')->references('id')->on('term_payment')->onUpdate('cascade')
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
        Schema::dropIfExists('history_order');
    }
}
