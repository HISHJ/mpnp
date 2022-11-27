// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Area Chart Example
var ctx = document.getElementById("myAreaChart_month");
var daily = document.getElementsByName("monthly_value");
var sales = document.getElementsByName("monthly_sales_value");

var myLineChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: ["네달전", "세달전", "두달전", "한달전", "이달"],
    datasets: [{
      label: "Sales",
      lineTension: 0.3,
      backgroundColor: "rgba(2,117,216,0.0)",
      borderColor: "#495057",
      pointRadius: 5,
      pointBackgroundColor: "#495057",
      pointBorderColor: "#495057",
      pointHoverRadius: 5,
      pointHoverBackgroundColor: "#495057",
      pointHitRadius: 50,
      pointBorderWidth: 2,
      data: [sales[4].value , sales[3].value, sales[2].value, sales[1].value, sales[0].value],
    }],
  },
  options: {
    scales: {
      xAxes: [{
        time: {
          unit: 'date'
        },
        gridLines: {
          display: false
        },
        ticks: {
          maxTicksLimit: 7
        }
      }],
      yAxes: [{
        ticks: {
          min: 0,
          max: 20000000,
          maxTicksLimit: 5
        },
        gridLines: {
          color: "rgba(0, 0, 0, .125)",
        }
      }],
    },
    legend: {
      display: false
    }
  }
});
