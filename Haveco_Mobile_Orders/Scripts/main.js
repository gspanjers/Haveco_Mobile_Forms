var Orders = {};
Orders.NumberOfRows = 1;

function copyInvoiceData()
{
    document.getElementById('DeliveryStreet').value = document.getElementById('InvoiceStreet').value;
    document.getElementById('DeliveryPostalCode').value = document.getElementById('InvoicePostalCode').value;
    document.getElementById('DeliveryCity').value = document.getElementById('InvoiceCity').value;
    document.getElementById('DeliveryCountry').value = document.getElementById('InvoiceCountry').value;
}

function addRow()
{

    Orders.NumberOfRows+=1;

    // Create the row
    var row = document.createElement('tr');
    row.setAttribute('data-rowid', Orders.NumberOfRows);

    // Create the 1st cell
    var cell1 = document.createElement('td');
    cell1.className = 'order-list__table--cell';

    // Create the textarea in the cell
    var textArea = document.createElement('textarea');
    textArea.id = 'Product_' + Orders.NumberOfRows;
    textArea.className = 'order-list__table__textarea';

    cell1.appendChild(textArea); // Add the textarea as a child in the cell
    row.appendChild(cell1); // Attach the cell to the row

    // Create the 2nd cell
    var cell2 = document.createElement('td');
    cell2.className = 'order-list__table--cell';

    // Create the amount input
    var amount = document.createElement('input');
    amount.type = 'number';
    amount.id = 'Amount_' + Orders.NumberOfRows;

    cell2.appendChild(amount) // Add the amount input to the cell
    row.appendChild(cell2); // Attach the cell to the row

    // Create the 3rd cell
    var cell3 = document.createElement('td');
    cell3.className = 'order-list__table--cell';

    // Create the amount input
    var price = document.createElement('input');
    price.type = 'number';
    price.id = 'Price_' + Orders.NumberOfRows;
    price.value = '0,00';
    price.step = '1';

    cell3.appendChild(price) // Add the price input to the cell
    row.appendChild(cell3); // Attach the cell to the row

    // Add the row to the table
    document.getElementById('OrderItems').appendChild(row);

    // Scroll to the bottom of the page
    window.scrollTo(0, document.body.scrollHeight);

}
