<!doctype html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <title>Клиенты</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
</head>

<body>
<div class="container text-center">
    <img src="peppa.png" style="width: 300px; height: auto; padding: 50px">
</div>
<div class="container">
    <div class="row justify-content-center">
        <h4>Создать клиента</h4>
        <br/></div>
    <div class="row justify-content-center">
        <form method="POST" action="/clients/save" novalidate>
            <div class="row justify-content-around">
                <div style="padding-right: 10px">
                    <input required type="text" id="clientNameTextBox" name="name" value="Эрик Картман" placeholder="Имя">
                </div>
                <div style="padding-right: 10px">
                    <input required type="number" id="clientPhoneTextBox" name="phone" value="8 800 555 35 35" placeholder="Телефон">
                </div>
                <div style="padding-right: 10px">
                    <input type="number" id="clientAdditionalPhoneTextBox" value="-" name="additionalPhone" placeholder="Дополнительный телефон">
                </div>
                <div style="padding-right: 10px">
                    <input required type="text" id="clientStreetTextBox" value="Южнопарковая" name="street" placeholder="Улица">
                </div>
                <button type="submit">Клик!</button>
            </div>
        </form>
    </div>
    <h4>Список всех клиентов</h4>
    <br/>
    <table class="table table-bordered table-condensed table-striped">
        <thead class="thead-dark">
        <div class="col-4">
            <tr>
                <div class="row justify-content-between">
                    <th scope="col">id</th>
                    <th scope="col">name</th>
                    <th scope="col">street</th>
                    <th scope="col">phone</th>
                </div>
            </tr>
        </div>
        </thead>
        <tbody>
        <#list clients as client>
            <tr>
                <th scope="row">${client.id}</th>
                <th>${client.name}</th>
                <th>${client.address.street}</th>
                <td>${client.phones?map(phone -> phone.number)?join("; дополнительный: ")}</td>
            </tr>
        </#list>
    </table>
</div>
</div>
</div>
</body>
</html>
