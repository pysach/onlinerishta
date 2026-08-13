
 <div class="col-sm-12">
	     <form action="fetch.php" method="POST">
	           <div class="col-sm-4 form-group"><label>Search Matches</label></div>
              <!--<div class="col-sm-2 form-group">
                   <div class="select-block1">                   
                    <select name="for" required class="form-control">
	                    <option value="">LOOKING FOR</option>
	                    <option value="Male">Male</option>
	                    <option value="Female">Female</option>
	                    
                    </select>
                  </div>
                 </div>-->


<div class="col-sm-2 form-group">
                   <div class="select-block1">                   
                    <select name="af" required class="form-control">
	                    <option value="">Age From</option>
	                    <option value="2002">18</option>
	                    <option value="2001">19</option>
	                    <option value="2000">20</option>
	                    <option value="1999">21</option>
	                    <option value="1998">22</option>
	                    <option value="1997">23</option>
	                    <option value="1996">24</option>
	                    <option value="1995">25</option>
	                    <option value="1994">26</option>
	                    <option value="1993">27</option>
	                    <option value="1992">28</option>
	                    <option value="1991">29</option>
	                    <option value="1990">30</option>
	                    <option value="1989">31</option>
	                    <option value="1988">32</option>
	                    <option value="1987">33</option>
	                    <option value="1986">34</option>
	                    <option value="1985">35</option>
	                    <option value="1984">36</option>
	                    <option value="1983">37</option>
	                    <option value="1982">38</option>
	                    <option value="1981">39</option>
	                    <option value="1980">40</option>
	                    <option value="1979">41</option>
	                    <option value="1978">42</option>
	                    <option value="1977">43</option>
	                    <option value="1976">44</option>
	                    <option value="1975">45</option>
	                    <option value="1974">46</option>
	                    <option value="1973">47</option>
	                    <option value="1972">48</option>
	                    <option value="1971">49</option>
	                    <option value="1970">50</option>
	                    <option value="1969">51</option>
	                    <option value="1968">52</option>
	                    <option value="1967">53</option>
	                    <option value="1966">54</option>
	                    <option value="1965">55</option>
	                    <option value="1964">56</option>
	                    <option value="1963">57</option>
	                    <option value="1962">58</option>
	                    <option value="1961">59</option>
	                    <option value="1960">60</option>
	                    <option value="1959">61</option>
	                    <option value="1958">62</option>
	                    <option value="1957">63</option>
	                    <option value="1956">64</option>
	                    <option value="1955">65</option>
	                    <option value="1954">66</option>
	                    <option value="1953">67</option>
	                    <option value="1952">68</option>
	                    <option value="1961">69</option>
	                    <option value="1960">70</option>
                    </select>
                  </div>
                 </div>

<div class="col-sm-2 form-group">
                   <div class="select-block1">                   
                    <select name="at" required class="form-control">
	                  <option value="2002">Age To</option>
	                    <option value="2002">18</option>
	                    <option value="2001">19</option>
	                    <option value="2000">20</option>
	                    <option value="1999">21</option>
	                    <option value="1998">22</option>
	                    <option value="1997">23</option>
	                    <option value="1996">24</option>
	                    <option value="1995">25</option>
	                    <option value="1994">26</option>
	                    <option value="1993">27</option>
	                    <option value="1992">28</option>
	                    <option value="1991">29</option>
	                    <option value="1990">30</option>
	                    <option value="1989">31</option>
	                    <option value="1988">32</option>
	                    <option value="1987">33</option>
	                    <option value="1986">34</option>
	                    <option value="1985">35</option>
	                    <option value="1984">36</option>
	                    <option value="1983">37</option>
	                    <option value="1982">38</option>
	                    <option value="1981">39</option>
	                    <option value="1980">40</option>
	                    <option value="1979">41</option>
	                    <option value="1978">42</option>
	                    <option value="1977">43</option>
	                    <option value="1976">44</option>
	                    <option value="1975">45</option>
	                    <option value="1974">46</option>
	                    <option value="1973">47</option>
	                    <option value="1972">48</option>
	                    <option value="1971">49</option>
	                    <option value="1970">50</option>
	                    <option value="1969">51</option>
	                    <option value="1968">52</option>
	                    <option value="1967">53</option>
	                    <option value="1966">54</option>
	                    <option value="1965">55</option>
	                    <option value="1964">56</option>
	                    <option value="1963">57</option>
	                    <option value="1962">58</option>
	                    <option value="1961">59</option>
	                    <option value="1960">60</option>
	                    <option value="1959">61</option>
	                    <option value="1958">62</option>
	                    <option value="1957">63</option>
	                    <option value="1956">64</option>
	                    <option value="1955">65</option>
	                    <option value="1954">66</option>
	                    <option value="1953">67</option>
	                    <option value="1952">68</option>
	                    <option value="1951">69</option>
	                    <option value="1950">70</option>
                    </select>
                  </div>
                 </div>

<!--	  	    <div class="col-sm-2 form-group">
		      <input type="text" id="edit-name" name="fcast" placeholder="Cast Looking For" required  oninput="this.value = this.value.replace(/[^a-zA-Z. ]/g, '').replace(/(\..*)\./g, '$1');" maxlength="30" class="form-text required">
		    </div>

 <div class="col-sm-2 form-group">
                   <div class="select-block1">                   
                    <select name="for" required class="form-control">
	                    <option value="">Mangalik Dosh</option>
	                    <option value="Male">Male</option>
	                    <option value="Female">Female</option>
	                    
                    </select>
                  </div>
                 </div> -->


<!--   <div class="col-sm-2 form-group">
		      
		      <input type="text" id="edit-name" name="city" placeholder="Enter Your City" required oninput="this.value = this.value.replace(/[^a-zA-Z. ]/g, '').replace(/(\..*)\./g, '$1');" maxlength="60" class="form-text required">
		    </div> -->

<!-- <div class="col-sm-2 form-group">
		      <input type="text" id="edit-name"  oninput="this.value = this.value.replace(/[^0-9]/g,'').replace(/(\..*)\./g, '$1');" required maxlength="10" name="mob" placeholder="Enter Your Mobile"   class="form-text required">
		    </div>
 -->
		   
			  <div class="col-sm-2 form-group">
			    <input type="submit" id="edit-submit" name="ffind" value="Search" class="btnn_1 submit" >
			  </div>
		 </form>
	  </div>

