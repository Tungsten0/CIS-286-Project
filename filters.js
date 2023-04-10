// sort by filtering table

function sortTable() {
  var departmentInput, departmentFilter, trackInput, trackFilter, searchInput, searchFilter, table, tr, td, i, txtValue;
  departmentInput = document.getElementById("department-select");
  departmentFilter = departmentInput.value.toUpperCase();
  trackInput = document.getElementById("track-select");
  trackFilter = trackInput.value.toUpperCase();
  searchInput = document.getElementById("search-input");
  searchFilter = searchInput.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  
  for (i = 0; i < tr.length; i++) {
      var departmentTd = tr[i].getElementsByTagName("td")[0];
      var trackTd = tr[i].getElementsByTagName("td")[1];

      if (departmentTd && trackTd) {
          var departmentTxtValue = departmentTd.textContent || departmentTd.innerText;
          var trackTxtValue = trackTd.textContent || trackTd.innerText;

          if ((departmentFilter == "" || departmentTxtValue.toUpperCase().indexOf(departmentFilter) > -1) &&
              (trackFilter == "" || trackTxtValue.toUpperCase().indexOf(trackFilter) > -1) &&
              (searchFilter == "" || departmentTxtValue.toUpperCase().indexOf(searchFilter) > -1 || trackTxtValue.toUpperCase().indexOf(searchFilter) > -1)) {
          tr[i].style.display = "";
          } else {
          tr[i].style.display = "none";
          }
      }
  }
}

function searchTable() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("search-input");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");

  // Get track name from query string parameter
  var urlParams = new URLSearchParams(window.location.search);
  var trackName = urlParams.get('track');

  // Pre-fill search box with track name
  if (trackName && input.value === '') {
      input.value = trackName;
  }

  for (i = 0; i < tr.length; i++) {
      td_department = tr[i].getElementsByTagName("td")[0];
      td_track = tr[i].getElementsByTagName("td")[1];
      td_program = tr[i].getElementsByTagName("td")[2];
      if (td_department || td_track || td_program) {
          txtValue_department = td_department.textContent || td_department.innerText;
          txtValue_track = td_track.textContent || td_track.innerText;
          txtValue_program = td_program.textContent || td_program.innerText;

          // Filter table by track name
          if (trackName && txtValue_track.toUpperCase() !== trackName.toUpperCase()) {
              tr[i].style.display = "none";
          } else if (txtValue_department.toUpperCase().indexOf(filter) > -1 ||
              txtValue_track.toUpperCase().indexOf(filter) > -1 ||
              txtValue_program.toUpperCase().indexOf(filter) > -1) {
              tr[i].style.display = "";
          } else {
              tr[i].style.display = "none";
          }
      }   
  }
}

//alphabetically sort
function alphabetSort(n) {
    var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
    table = document.getElementById("myTable");
    switching = true;
    // Set the sorting direction to ascending:
    dir = "asc";
    /* Make a loop that will continue until
    no switching has been done: */
    while (switching) {
      // Start by saying: no switching is done:
      switching = false;
      rows = table.rows;
      /* Loop through all table rows (except the
      first, which contains table headers): */
      for (i = 1; i < (rows.length - 1); i++) {
        // Start by saying there should be no switching:
        shouldSwitch = false;
        /* Get the two elements you want to compare,
        one from current row and one from the next: */
        x = rows[i].getElementsByTagName("TD")[n];
        y = rows[i + 1].getElementsByTagName("TD")[n];
        /* Check if the two rows should switch place,
        based on the direction, asc or desc: */
        if (dir == "asc") {
          if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
            // If so, mark as a switch and break the loop:
            shouldSwitch = true;
            break;
          }
        } else if (dir == "desc") {
          if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
            // If so, mark as a switch and break the loop:
            shouldSwitch = true;
            break;
          }
        }
      }
      if (shouldSwitch) {
        /* If a switch has been marked, make the switch
        and mark that a switch has been done: */
        rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
        switching = true;
        // Each time a switch is done, increase this count by 1:
        switchcount ++;
      } else {
        /* If no switching has been done AND the direction is "asc",
        set the direction to "desc" and run the while loop again. */
        if (switchcount == 0 && dir == "asc") {
          dir = "desc";
          switching = true;
        }
      }
    }
}
