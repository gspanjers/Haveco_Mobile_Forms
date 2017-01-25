<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="Haveco_Mobile_Orders._Default" %>

<!DOCTYPE html>

<html lang="nl-nl" xmlns="http://www.w3.org/1999/xhtml">
<head>

    <title>Orderbon</title>

    <link rel="stylesheet" href="Styles/main.css" />

    <script src="Scripts/jquery-3.1.1.min.js"></script>
    <script src="Scripts/Main.js"></script>

    <meta charset="UTF-8" />
    <meta name="description" content="Haveco order invulformulier" />
    <meta name="keywords" content="Haveco Orders" />
    <meta name="author" content="Guido Spanjers" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

</head>
<body class="background">
    <form id="frmOrder" runat="server">


        <div class="row row--single-line">
            <div class="row__label" >
                Vertegenwoordiger:
            </div>

            <div class="row__data" >
                <select id="representative">
                    <option>Vertegenwoordiger 1</option>
                    <option>Vertegenwoordiger 2</option>
                    <option>Vertegenwoordiger 3</option>
                    <option>Vertegenwoordiger 4</option>
                </select>
            </div>
        </div>

        <div class="row row--single-line">
            <div class="row__label" >
                Datum:
            </div>

            <div class="row__data" >
                <input id="invoice-date" type="date" />
            </div>
        </div>

        <div class="row row--section">
            Klant gegevens
        </div>

        <div class="row row--single-line row--header">
            <div class="row__label" >
                Naam klant:
            </div>

            <div class="row__data" >
                <input id="CustomerName" type="text" />
            </div>
        </div>
        <div class="row row--single-line">
            <div class="row__label" >
                Telefoonnummer:
            </div>

            <div class="row__data" >
                <input id="Telephonenumber" type="text" />
            </div>
        </div>

        <div class="row row--section">
            Factuur adres
        </div>

        <div class="row row--single-line row--header">
            <div class="row__label" >
                Straat:
            </div>

            <div class="row__data" >
                <input id="InvoiceStreet" type="text" />
            </div>
        </div>

        <div class="row row--single-line">
            <div class="row__label" >
                Postcode:
            </div>

            <div class="row__data" >
                <input id="InvoicePostalCode" type="text" />
            </div>
        </div>

        <div class="row row--single-line">
            <div class="row__label" >
                Plaats:
            </div>

            <div class="row__data" >
                <input id="InvoiceCity" type="text" />
            </div>
        </div>

        <div class="row row--single-line">
            <div class="row__label" >
                Land:
            </div>

            <div class="row__data" >
                <input id="InvoiceCountry" type="text" value="Nederland" />
            </div>
        </div>

        <div class="row row--section">
            Leveringsadres
            <div class="row__data" >
                <img src="../Images/copy.png" class="row--section__image" alt="Kopiëren factuurgegevens" onclick="copyInvoiceData()" />
            </div>
        </div>

        <div class="row row--single-line row--header">
            <div class="row__label" >
                Straat:
            </div>

            <div class="row__data" >
                <input id="DeliveryStreet" type="text" />
            </div>
        </div>

        <div class="row row--single-line">
            <div class="row__label" >
                Postcode:
            </div>

            <div class="row__data" >
                <input id="DeliveryPostalCode" type="text" />
            </div>
        </div>

        <div class="row row--single-line">
            <div class="row__label" >
                Plaats:
            </div>

            <div class="row__data" >
                <input id="DeliveryCity" type="text" />
            </div>
        </div>

        <div class="row row--single-line">
            <div class="row__label" >
                Land:
            </div>

            <div class="row__data" >
                <input id="DeliveryCountry" type="text" value="Nederland" />
            </div>
        </div>

        <div class="row row--section">
            Betalingsafspraak
        </div>

        <div class="row row--multi-line row--header">
            <div class="row__label-stacked" >
                Afspraak:
            </div>

            <div class="row__data-stacked" >
                <textarea id="PaymentAgreements"></textarea>
            </div>
        </div>

        <div class="row row--section">
            Bon
        </div>

        <div class="row row--header row__label-stacked">
            <input type="radio" id="rdoPlacement_Placement" name="rdoPlacement" value="1" checked="checked" />Plaatsing
            <input type="radio" id="rdoPlacement_Replacement" name="rdoReplacement" value="2" class="row__radiobutton-padding" />Herplaatsing
            <input type="radio" id="rdoPlacement_AfterOrder" name="rdoPlacement" value="3" class="row__radiobutton-padding" />Nabestelling
        </div>

        <div class="row row--single-line">
            <div class="row__label" >
                Commisie:
            </div>

            <div class="row__data" >
                <input type="text" />
            </div>
        </div>

        <div class="row row--single-line">
            <div class="row__label" >
                Gewenste leverweek:
            </div>

            <div class="row__data" >
                <input type="week" />
            </div>
        </div>
       
        <div class="order-list">
            <table id="OrderItems" class="order-list__table">
                <colgroup>
                    <col class="order-list__table--column-large" />
                    <col class="order-list__table--column-small" />
                    <col class="order-list__table--column-small" />
                </colgroup>
                <tbody>
                    <tr>
                        <td class="order-list__table--header">
                            Model
                        </td>
                        <td class="order-list__table--header">
                            Aantal
                        </td>
                        <td class="order-list__table--header">
                            Prijs
                        </td>
                    </tr>
                    <tr data-rowid="1">
                        <td class="order-list__table--cell">
                            <textarea id="Product_1" class="order-list__table__textarea"></textarea>
                        </td>
                        <td class="order-list__table--cell">
                            <input type="number" id="Amount_1" />
                        </td>
                        <td class="order-list__table--cell">
                            <input type="number" value="0,00" step="1" id="Price_1" />
                        </td>
                    </tr>

                </tbody>
            </table>

            <div class="button button--full"  onclick="addRow();">
                <div class="button--center">
                Voeg nog een regel toe...
                </div>
            </div>
        </div>

        <input type="submit" class="button--hide" />

        <div class="row row--single-line">
            <div class="button button--full"  onclick="">
                <div class="button--center">
                    Verzenden
                </div>
            </div>
        </div>

    </form>

</body>
</html>
