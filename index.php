<?php
require_once("pdo.php");
try {
    $sql =
        // "SELECT * FROM chartjs.barchart";
        "SELECT * FROM chartjs.descriptionlabels INNER JOIN chartjs.datapoints ON descriptionlabels.id = datapoints.descriptionlabelid";
    $result = $pdo->query($sql);
    if ($result->rowCount() > 0) {
        $revenue = array();
        $labelaxis = array();
        // $cost = array();
        // $profit = array();
        while ($row = $result->fetch()) {
            $revenue[] = $row["datapoint"];
            $labelaxis[] = $row["labelaxis"];
            $descriptionlabel = $row["descriptionlabel"];
            $bgcolor = $row["bgcolor"];
            $bordercolor = $row["bordercolor"];
            // $cost[] = $row["cost"];
            // $profit[] = $row["profit"];
        }
        unset($result);
    } else {
        echo "No records matching your query were found.";
    }
} catch (PDOException $e) {
    die("ERROR: Could not able to execute $sql. " . $e->getMessage());
}
unset($pdo);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .chartBox {
            width: 700px;
        }
    </style>
</head>

<body>
    <div class="chartBox">
        <canvas id="myChart"></canvas>
    </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<!-- <script src="./data.js"></script> -->

<script>
    // setup
    const revenue = <?php echo json_encode($revenue) ?>;
    const labelaxis = <?php echo json_encode($labelaxis) ?>;
    const descriptionlabel = <?php echo json_encode($descriptionlabel); ?>;
    const bgcolor = <?php echo json_encode($bgcolor); ?>;
    const bordercolor = <?php echo json_encode($bordercolor); ?>;
    // const revenue = console.log(<?php #echo json_encode($revenue) 
                                    ?>);
    // const cost = <?php #echo json_encode($cost) 
                    ?>;
    // const profit = <?php #echo json_encode($profit) 
                        ?>;
    const data = {
        labels: labelaxis,
        datasets: [{
                label: descriptionlabel,
                data: revenue,
                backgroundColor: bgcolor,
                borderColor: bordercolor,
                borderWidth: 1
            }
            // , {
            //     label: 'cost',
            //     data: cost,
            //     backgroundColor: 'rgba(255,99,132,0.2)',
            //     borderColor: 'rgba(255,99,132,1)',
            //     borderWidth: 1
            // }, {
            //     label: '#profit',
            //     data: profit,
            //     backgroundColor: 'rgba(75,192,192,0.2)',
            //     borderColor: 'rgba(75,192,192,1)',
            //     borderWidth: 1
            // }
        ]
    };
    // config
    const config = {
        type: 'bar',
        data,
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    }
    // render
    const myChart = new Chart(
        document.getElementById("myChart"),
        config
    );
</script>

</html>