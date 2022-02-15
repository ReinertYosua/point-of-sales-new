<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Styles -->
    <!-- <link href="{{ asset('css/app.css') }}" rel="stylesheet"> -->
    <!-- Bootstrap Select Styles -->
    <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> -->
    <!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> -->
    <style>
        .top_rw{ background-color:#f4f4f4; }
        .td_w{ }
        button{ padding:5px 10px; font-size:14px;}
        .invoice-box {
            max-width: 890px;
            margin: auto;
            padding:10px;
            border: 1px solid #eee;
            box-shadow: 0 0 10px rgba(0, 0, 0, .15);
            font-size: 14px;
            line-height: 24px;
            font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
            color: #555;
        }
        .invoice-box table {
            width: 100%;
            line-height: inherit;
            text-align: left;
            border-bottom: solid 1px #ccc;
        }
        .invoice-box table td {
            padding: 5px;
            vertical-align:middle;
        }
        .invoice-box table tr td:nth-child(2) {
            text-align: right;
        }
        .invoice-box table tr.top table td {
            padding-bottom: 20px;
        }
        .invoice-box table tr.top table td.title {
            font-size: 45px;
            line-height: 45px;
            color: #333;
        }
        .invoice-box table tr.information table td {
            padding-bottom: 40px;
        }
        .invoice-box table tr.heading td {
            background: #eee;
            border-bottom: 1px solid #ddd;
            font-weight: bold;
            font-size:12px;
        }
        .invoice-box table tr.details td {
            padding-bottom: 20px;
        }
        .invoice-box table tr.item td{
            border-bottom: 1px solid #eee;
        }
        .invoice-box table tr.item.last td {
            border-bottom: none;
        }
        .invoice-box table tr.total td:nth-child(2) {
            border-top: 2px solid #eee;
            font-weight: bold;
        }
        @media only screen and (max-width: 600px) {
            .invoice-box table tr.top table td {
                width: 100%;
                display: block;
                text-align: center;
            }
            .invoice-box table tr.information table td {
                width: 100%;
                display: block;
                text-align: center;
            }
        }
        /** RTL **/
        .rtl {
            direction: rtl;
            font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
        }
        .rtl table {
            text-align: right;
        }
        .rtl table tr td:nth-child(2) {
            text-align: left;
        }
    </style>
    <title>Document</title>
</head>
<body>
    <div class="invoice-box">
        <table cellpadding="0" cellspacing="0">
		<tr class="top_rw">
		   <td colspan="2">
		      <h2 style="margin-bottom: 0px;"> Nota </h2>
			  <span style=""> Number: {{ $dataorder[0]["invoice_number"] }}<br/>Date: {{ date('d M Y', strtotime($dataorder[0]["date_order"])) }} </span>
		   </td>
		    <td  style="width:30%; margin-right: 10px;">
		        Order Id: {{ $dataorder[0]["idOrder"] }}
		   </td>
		</tr>
            <tr class="top">
                <td colspan="3">
                    <table>
                        <tr align="right">
                            <td>
							<b> Kepada Yth. {{ $dataorder[0]["nameCustomer"] }} </b> <br>
                                {{ $dataorder[0]["address"] }}<br>
                                {{ $dataorder[0]["tlpCustomer"] }}<br>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr class="information">
                  <td colspan="3">
                    <table>
                        <tr>
                            <td colspan="2">
							<b> Deskripsi </b> <br>
                                {{ $dataorder[0]["descriptionOrder"] }} <br>
                            </td>
                            <td> <b> Tanggal Jatuh Tempo Pembayaran </b><br>
                                {{ date('d M Y', strtotime($dataorder[0]["date_payment"])) }}<br>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <td colspan="3">
            <table cellspacing="0px" cellpadding="2px">
            <tr class="heading">
                <td style="width:25%;">
                    Produk
                </td>
				<td style="width:10%; text-align:center;">
                    Kuantiti.
                </td>
                <td style="width:10%; text-align:right;">
                    Harga (IDR)
                </td>
				 <td style="width:15%; text-align:right;">
                   Diskon
                </td>
				 <td style="width:15%; text-align:right;">
                    Deskripsi
                </td>
				<td style="width:15%; text-align:right;">
                 Jumlah (IDR)
                </td>
            </tr>
            <input type="hidden" value="{{ $totalbarang=0 }}">
            @foreach($datadetailorder as $id => $do)
			<tr class="item">
               <td style="width:25%;">
                    {{$do['product']}}
                </td>
				<td style="width:10%; text-align:center;">
                    {{$do['qty']}}
                    <input type="hidden" value="{{ $totalbarang+=$do['qty']}}">
                </td>
                <td style="width:10%; text-align:right;">
                    {{currency($do['price'])}}
                </td>
				<td style="width:15%; text-align:right;">
                    {{$do['disc']}}%
                </td>
				<td style="width:15%; text-align:right;">
                    {{$do['desc']}}
                </td>
				<td style="width:15%; text-align:right;">
                    {{currency($do['subtotal'])}}
                </td>
            </tr>
            @endforeach
			<tr class="item">
               <td style="width:25%;"> <b> Total Keseluruhan </b> </td>
				<td style="width:10%; text-align:center;">
                    {{$totalbarang}}
                </td>
                <td style="width:10%; text-align:right;" colspan=3>
                   
                </td>
				
				<td style="width:15%; text-align:right;">
                    <b>{{ currency($dataorder[0]["grandTotal"]) }}</b>
                </td>
            </tr>
            </td>
			</table>
            <tr class="total">
                  <td colspan="3" align="right">  Terbilang :  <b> {{ terbilang($dataorder[0]["grandTotal"]) }} </b> </td>
            </tr>
			<tr>
			   <td colspan="3">
			     <table cellspacing="0px" cellpadding="2px">
				    <!-- <tr>
			            <td width="50%">
						<b> Declaration: </b> <br>
                            We declare that this invoice shows the actual price of the goods
                            described above and that all particulars are true and correct. The
                            goods sold are intended for end user consumption and not for resale.
						</td>
						<td>
						 * This is a computer generated invoice and does not
						  require a physical signature
						</td>
			        </tr> -->
					 <tr>
			            <td width="50%">
                            <b> Tanda Terima, </b>
							<br>
							<br>
                            <br>
                            <br>
							...................................
							<br>
						</td>
						<td>
                            <b> Hormat Kami, </b>
							<br>
							<br>
                            <br>
                            <br>
							...................................
							<br>
						</td>
			        </tr>
			     </table>
			   </td>
			</tr>
        </table>
    </div>
</body>
</html>