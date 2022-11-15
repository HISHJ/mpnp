// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Bar Chart Example
var ctx = document.getElementById("myBarChart");
var myLineChart = new Chart(ctx, {
  type: 'bar',
  data: {
    labels: ["사료", "간식", "패션의류", "기타"],
    datasets: [{
      label: "고양이",
      backgroundColor: "#ffaac7",
      borderColor: "#ffaac7",
      data: [1425, 1512, 1621, 1781, 1921, 11494],
    },{
      label: "강아지",
      backgroundColor: "#669aff",
      borderColor: "#669aff",
      data: [4215, 5312, 6251, 7841, 9821, 13984],

    } ],
  },
  options: {
    scales: {
      xAxes: [{
        time: {
          unit: 'month'
        },
        gridLines: {
          display: false
        },
        ticks: {
          maxTicksLimit: 6
        }
      }],
      yAxes: [{
        ticks: {
          min: 0,
          max: 15000,
          maxTicksLimit: 5
        },
        gridLines: {
          display: true
        }
      }],
    },
    legend: {
      display: false
    }
  }
});
