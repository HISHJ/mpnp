// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Area Chart Example
var ctx = document.getElementById("myAreaChart_day");
var daily = document.getElementsByName("daily_value");
var sales = document.getElementsByName("sales_value");

var myLineChart = new Chart(ctx, {
  type: 'line',
  data: {
    /*labels: ["4일전", "3일전", "2일전", "1일전", "금일"],*/
    labels: [daily[4].value , daily[3].value, daily[2].value, daily[1].value, daily[0].value],
    datasets: [{
      label: "Sales",
      lineTension: 0.3,
      backgroundColor: "rgba(197,197,195,0.0)",
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
          max: 4000000,
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
