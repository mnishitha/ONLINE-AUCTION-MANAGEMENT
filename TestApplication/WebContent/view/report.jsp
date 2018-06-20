<%@include file="/common/header.jspf" %>
<%@include file="/common/nav_logout.jspf" %> 


 
    <canvas id="pieChart" style="width: 50%; height: 50vh" ></canvas>

    <script type="text/javascript">
        (function(){

            var canvas = document.getElementById("pieChart"); 
            var myData = {
                labels: ["CSE", "IT", "ECE", "EIE", "EEE"],
                datasets: [
                    {
                        label: 'Number of students',
                        data: [916, 214, 160, 60, 60],
                        backgroundColor: ["#F7464A", "#46BFBD", "#FDB45C", "#949FB1", "#4D5360"],
                        hoverBackgroundColor: ["#FF5A5E", "#5AD3D1", "#FFC870", "#A8B3C5", "#616774"]
                    }
                ]   
            }
            var myChart = new Chart(canvas, {
                                                type: 'bar',
                                                data: myData,
                                                options: { responsive: false }    
                                        });

        })();
	
</script>
 
 
</body>
</html>