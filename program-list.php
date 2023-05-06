<?php
  require "header.php";
?>
        
        <div class="container" style="margin-top:10px;">
            <h2 style="color: #200174;">St John's College Junior College Departments-Tracks-Programs</h2>
            <h5 style="margin-top: 10px; color: #200174;">Search for Department Track or Program</h5>
            <input class="form-control" type="text" id="search-input" onkeyup="searchTable()" placeholder="Search..." style="width: 100%;">

            <div class="row" style="margin-top: 10px;">
                <div class="col">
                    <h5 style="color: #200174;" for="department-select">Filter by Department:</h5>
                    <select class="form-control" id="department-select" onchange="sortTable()">
                      <option value="">All &darr;</option>
                      <option value="Computer Science">Computer Science</option>
                      <option value="Business">Business</option>
                      <option value="Humanities & Education">Humanities & Education</option>
                      <option value="Math & Science">Math & Science</option>
                      <option value="Social Sciences">Social Sciences</option>
                    </select>
                </div>
                <div class="col">
                    <h5 style="color: #200174;" for="track-select">Filter by Track:</h5>
                    <select class="form-control" id="track-select" onchange="sortTable()">
                      <option value="">All &darr;</option>
                      <option value="Business Administration">Business Administration</option>
                      <option value="Tourism Management">Tourism Management</option>
                      <option value="Entrepreneurship">Entrepreneurship</option>
                      <option value="Computer Science">Computer Science</option>
                      <option value="History and Literature">History and Literature</option>
                      <option value="Fine Arts &amp; Music">Fine Arts &amp; Music</option>
                      <option value="Liberal Arts">Liberal Arts</option>
                      <option value="Comercial Graphic Design">Comercial Graphic Design</option>
                      <option value="Education">Education</option>
                      <option value="Biology &amp; Chemistry">Biology &amp; Chemistry</option>
                      <option value="Math &amp; Physics">Math &amp; Physics</option>
                      <option value="Interdisciplinary Science">Interdisciplinary Science</option>
                      <option value="History &amp; Economics">History &amp; Economics</option>
                      <option value="Sociology &amp; Psychology">Sociology &amp; Psychology</option>
                      <option value="Criminal Justice &amp; Law">Criminal Justice &amp; Law</option>
                    </select>

                </div>
            </div>

            <table class="table table-striped"  id="myTable">
                <thead>
                  <tr style="font-size: large;">
                    <th><a href="#" onclick="alphabetSort(0)" style="text-decoration: none;">Department</a></th>
                    <th>Track</th>
                    <th>Program</th>
                  </tr>
                </thead>
                <tbody>
                  <tr id="BUS">
                    <td>Business</td>
                    <td>Business Administration</td>
                    <td><a href="program-detail.php?id=BA" style="text-decoration: none;">Business Administration</a></td>
                  </tr>
                  <tr>
                    <td>Business</td>
                    <td>Business Administration</td>
                    <td><a href="program-detail.php?id=BAA" style="text-decoration: none;">Business Administration with Accounting</a></td>
                  </tr>
                  <tr>
                    <td>Business</td>
                    <td>Business Administration</td>
                    <td><a href="program-detail.php?id=BAE" style="text-decoration: none;">Business Administration with Economics</a></td>
                  </tr>
                  <tr>
                    <td>Business</td>
                    <td>Business Administration</td>
                    <td><a href="program-detail.php?id=BAAE" style="text-decoration: none;">Business Administration with Acc & Econ</a></td>
                  </tr>
                  <tr>
                    <td>Business</td>
                    <td>Business Administration</td>
                    <td><a href="program-detail.php?id=BACGD" style="text-decoration: none;">Business Administration with Graphic Design</a></td>
                  </tr>
                  <tr>
                    <td>Business</td>
                    <td>Tourism Management</td>
                    <td><a href="program-detail.php?id=TM" style="text-decoration: none;">Tourism Management</a></td>
                  </tr>
                  <tr>
                    <td>Business</td>
                    <td>Entrepreneurship</td>
                    <td><a href="program-detail.php?id=ENT" style="text-decoration: none;">Entrepreneurship</a></td>
                  </tr>
                  <tr id="CS">
                    <td>Computer Science</td>
                    <td>Computer Science</td>
                    <td><a href="program-detail.php?id=CIS" style="text-decoration: none;">Computer Information Systems</a></td>
                  </tr>
                  <tr>
                    <td>Computer Science</td>
                    <td>Computer Science</td>
                    <td><a href="program-detail.php?id=CNT" style="text-decoration: none;">Computer Networking</a></td>
                  </tr>
                  <tr>
                    <td>Computer Science</td>
                    <td>Computer Science</td>
                    <td><a href="program-detail.php?id=CS" style="text-decoration: none;">Computer Science</a></td>
                  </tr>
                  <tr>
                    <td>Computer Science</td>
                    <td>Computer Science</td>
                    <td><a href="program-detail.php?id=MIS" style="text-decoration: none;">Management Information Systems</a></td>
                  </tr>
                  <tr>
                    <td>Computer Science</td>
                    <td>Computer Science</td>
                    <td><a href="program-detail.php?id=IT" style="text-decoration: none;">Infomration Technology</a></td>
                  </tr>
                  <tr>
                    <td>Humanities & Education</td>
                    <td>History and Literature</td>
                    <td><a href="program-detail.php?id=LIT" style="text-decoration: none;">Literature</a></td>
                  </tr>
                  <tr id="HUMAN">
                    <td>Humanities & Education</td>
                    <td>History and Literature</td>
                    <td><a href="program-detail.php?id=HISLIT" style="text-decoration: none;">History and Literature</a></td>
                  </tr>
                  <tr>
                    <td>Humanities & Education</td>
                    <td>Fine Arts & Music</td>
                    <td><a href="program-detail.php?id=FA" style="text-decoration: none;">Fine Arts</a></td>
                  </tr>
                  <tr>
                    <td>Humanities & Education</td>
                    <td>Fine Arts & Music</td>
                    <td><a href="program-detail.php?id=MU" style="text-decoration: none;">Music</a></td>
                  </tr>
                  <tr>
                    <td>Humanities & Education</td>
                    <td>Fine Arts & Music</td>
                    <td><a href="program-detail.php?id=FAM" style="text-decoration: none;">Fine Arts & Music</a></td>
                  </tr>
                  <tr>
                    <td>Humanities & Education</td>
                    <td>Liberal Arts</td>
                    <td><a href="program-detail.php?id=LA" style="text-decoration: none;">Liberal Arts</a></td>
                  </tr>
                  <tr>
                    <td>Humanities & Education</td>
                    <td>Comercial Graphic Design</td>
                    <td><a href="program-detail.php?id=CGD" style="text-decoration: none;">Comercial Graphic Design</a></td>
                  </tr>
                  <tr>
                    <td>Humanities & Education</td>
                    <td>Education</td>
                    <td><a href="program-detail.php?id=EDU" style="text-decoration: none;">Primary Education</a></td>
                  </tr>
                  <tr id="MTHSCI">
                    <td>Math & Science</td>
                    <td>Biology & Chemistry</td>
                    <td><a href="program-detail.php?id=BIO" style="text-decoration: none;">Biology</a></td>
                  </tr>
                  <tr>
                    <td>Math & Science</td>
                    <td>Biology & Chemistry</td>
                    <td><a href="program-detail.php?id=CHE" style="text-decoration: none;">Chemistry</a></td>
                  </tr>
                  <tr>
                    <td>Math & Science</td>
                    <td>Biology & Chemistry</td>
                    <td><a href="program-detail.php?id=BIOCHE" style="text-decoration: none;">Biology & Chemistry</a></td>
                  </tr>
                  <tr>
                    <td>Math & Science</td>
                    <td>Biology & Chemistry</td>
                    <td><a href="program-detail.php?id=ENS" style="text-decoration: none;">Environmental Science</a></td>
                  </tr>
                  <tr>
                    <td>Math & Science</td>
                    <td>Math & Physics</td>
                    <td><a href="program-detail.php?id=MTH" style="text-decoration: none;">Math</a></td>
                  </tr>
                  <tr>
                    <td>Math & Science</td>
                    <td>Math & Physics</td>
                    <td><a href="program-detail.php?id=MTHCHE" style="text-decoration: none;">Math & Chemistry</a></td>
                  </tr>
                  <tr>
                    <td>Math & Science</td>
                    <td>Math & Physics</td>
                    <td><a href="program-detail.php?id=PHY" style="text-decoration: none;">Physics</a></td>
                  </tr>
                  <tr>
                    <td>Math & Science</td>
                    <td>Interdisciplinary Science</td>
                    <td><a href="program-detail.php?id=IS" style="text-decoration: none;">Interdisciplinary Science</a></td>
                  </tr>
                  <tr id="SOCSCI">
                    <td>Social Sciences</td>
                    <td>History & Economics</td>
                    <td><a href="program-detail.php?id=HIS" style="text-decoration: none;">History</a></td>
                  </tr>
                  <tr>
                    <td>Social Sciences</td>
                    <td>History & Economics</td>
                    <td><a href="program-detail.php?id=ECO" style="text-decoration: none;">Economics</a></td>
                  </tr>
                  <tr>
                    <td>Social Sciences</td>
                    <td>History & Economics</td>
                    <td><a href="program-detail.php?id=HISECO" style="text-decoration: none;">History & Economics</a></td>
                  </tr>
                  <tr>
                    <td>Social Sciences</td>
                    <td>History & Economics</td>
                    <td><a href="program-detail.php?id=HISSOC" style="text-decoration: none;">History & Sociology</a></td>
                  </tr>
                  <tr>
                    <td>Social Sciences</td>
                    <td>History & Economics</td>
                    <td><a href="program-detail.php?id=IR" style="text-decoration: none;">International Relations</a></td>
                  </tr>
                  <tr>
                    <td>Social Sciences</td>
                    <td>Sociology & Psychology</td>
                    <td><a href="program-detail.php?id=SOC" style="text-decoration: none;">Sociology</a></td>
                  </tr>
                  <tr>
                    <td>Social Sciences</td>
                    <td>Sociology & Psychology</td>
                    <td><a href="program-detail.php?id=PSY" style="text-decoration: none;">Psychology</a></td>
                  </tr>
                  <tr>
                    <td>Social Sciences</td>
                    <td>Sociology & Psychology</td>
                    <td><a href="program-detail.php?id=SOCPSY" style="text-decoration: none;">Sociology & Psychology</a></td>
                  </tr>
                  <tr>
                    <td>Social Sciences</td>
                    <td>Sociology & Psychology</td>
                    <td><a href="program-detail.php?id=SOCECO" style="text-decoration: none;">Sociology & Economics</a></td>
                  </tr>
                  <tr>
                    <td>Social Sciences</td>
                    <td>Criminal Justice & Law</td>
                    <td><a href="program-detail.php?id=CR" style="text-decoration: none;">Criminal Justice</a></td>
                  </tr>
                  <tr>
                    <td>Social Sciences</td>
                    <td>Criminal Justice & Law</td>
                    <td><a href="program-detail.php?id=LAW" style="text-decoration: none;">Law</a></td>
                  </tr>
                </tbody>
            </table>

        </div>
        <script src="filters.js"></script>
        

    </main>

<?php
  require "footer.php";
?>