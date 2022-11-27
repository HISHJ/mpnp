// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Bar Chart Example
var ctx = document.getElementById("myBarChart");

var dog_subName = document.getElementsByName("dog_subName");
var dog_count = document.getElementsByName("dog_count");
var cat_subName = document.getElementsByName("cat_subName");
var cat_count = document.getElementsByName("cat_count");

var myLineChart = new Chart(ctx, {
  type: 'bar',
  data: {
    labels: ["사료", "간식", "패션의류", "기타"],
    datasets: [{
      label: "고양이",
      backgroundColor: "#ffaac7",
      borderColor: "#ffaac7",
      data: [cat_count[0].value,cat_count[1].value,cat_count[2].value,cat_count[3].value],
    },{
      label: "강아지",
      backgroundColor: "#669aff",
      borderColor: "#669aff",
      data: [dog_count[0].value,dog_count[1].value,dog_count[2].value,dog_count[3].value],

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
          max: 150,
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
