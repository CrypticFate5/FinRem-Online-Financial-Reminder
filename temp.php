<form action="#" method="post" class="formContainer">
    <div class="obj">
        <label for="custId">Customer ID</label>
        <input type="text" name="custId" id="custId" required>
    </div>
    <div class="obj">
        <label for="custName">Name</label>
        <input type="text" name="custName" id="custName" required>
    </div>
    <div class="obj">
        <label for="phone">Phone</label>
        <input type="number" name="phone" id="phone" maxlength="10" required>
    </div>
    <div class="obj">
        <label for="dob">Date of Birth</label>
        <input type="date" name="dob" id="dob" required>
    </div>
    <div class="obj">
        <label for="email">Email</label>
        <input type="email" name="email" id="email" required>
    </div>
    <div class="obj">
        <label for="aadhar">Aadhar Number</label>
        <input type="text" name="aadhar" id="aadhar" maxlength="12" required>
    </div>
    <div class="obj">
        <label for="pan">PAN</label>
        <input type="text" name="pan" id="pan" maxlength="10" required>
    </div>
    <div class="obj">
        <label for="houseNo">House Number</label>
        <input type="text" name="houseNo" id="houseNo" required>
    </div>
    <div class="obj">
        <label for="stName">Street Name</label>
        <input type="text" name="stName" id="stName" required>
    </div>
    <div class="obj">
        <label for="location">Location</label>
        <input type="text" name="location" id="location" required>
    </div>
    <div class="obj">
        <label for="city">City</label>
        <input type="text" name="city" id="city" required>
    </div>
    <div class="obj">
        <label for="taluk">Taluk</label>
        <input type="text" name="taluk" id="taluk" required>
    </div>
    <div class="obj">
        <label for="district">District</label>
        <input type="text" name="district" id="district" required>
    </div>
    <div class="obj">
        <label for="state">State</label>
        <input type="text" name="state" id="state" required>
    </div>
    <div class="obj">
        <label for="pincode">Pincode</label>
        <input type="text" name="pincode" id="pincode" maxlength="6" required>
    </div>
    <input type="hidden" name="action" value="custAdd">
    <button type="submit" class="subBtn">Add</button>
</form>






<form action="#" method="post" class="formContainer">
    <div class="obj">
        <label for="custId">Customer ID</label>
        <input type="text" name="custId" id="custId" required>
    </div>
    <div class="obj">
        <label for="loanAcctNo">Loan Account Number</label>
        <input type="text" name="loanAcctNo" id="loanAcctNo" required>
    </div>
    <div class="obj">
        <label for="acctOpenDate">Account Opening Date</label>
        <input type="date" name="acctOpenDate" id="acctOpenDate" required>
    </div>
    <div class="obj">
        <label for="savingsAcctNo">Savings Account Number</label>
        <input type="text" name="savingsAcctNo" id="savingsAcctNo" required>
    </div>
    <div class="obj">
        <label for="loanType">Type of Loan</label>
        <select name="loanType" id="loanType" required>
            <option value="None">----</option>
            <option value="Personal">Personal</option>
            <option value="Car">Car</option>
            <option value="Two Wheeler">Two Wheeler</option>
            <option value="Business">Business</option>
            <option value="Education">Education</option>
        </select>
    </div>
    <div class="obj">
        <label for="loanScheme">Loan Scheme</label>
        <input type="text" name="loanScheme" id="loanScheme" required>
    </div>
    <div class="obj">
        <label for="sanctionAmt">Sanction Amount</label>
        <input type="number" name="sanctionAmt" id="sanctionAmt" required>
    </div>
    <div class="obj">
        <label for="sanctionDate">Sanction Date</label>
        <input type="date" name="sanctionDate" id="sanctionDate" required>
    </div>
    <div class="obj">
        <label for="tenure">Tenure (in months)</label>
        <input type="number" name="tenure" id="tenure" required>
    </div>
    <div class="obj">
        <label for="lastReview">Last Review Date</label>
        <input type="date" name="lastReview" id="lastReview" required>
    </div>
    <div class="obj">
        <label for="nextReview">Next Review Date</label>
        <input type="date" name="nextReview" id="nextReview" required>
    </div>
    <div class="obj">
        <label for="insuranceComp">Insurance Company</label>
        <select name="insuranceComp" id="insuranceComp">
            <option value="None">----</option>
            <option value="MS Chola">MS Chola</option>
            <option value="Tata AIG">Tata AIG</option>
            <option value="Niva Bupa">Niva Bupa</option>
            <option value="Star">Star</option>
            <option value="India First">India First</option>
            <option value="NIC">NIC</option>
            <option value="UIC">UIC</option>
        </select>
    </div>
    <div class="obj">
        <label for="insuranceType">Insurance Type</label>
        <select name="insuranceType id=" insuranceType">
            <option value="None">----</option>
            <option value="Fire">Fire</option>
            <option value="Burglary">Burglary</option>
            <option value="Property">Property</option>
            <option value="Stock">Stock</option>
            <option value="Asset">Asset</option>
            <option value="Vehicle">Vehicle</option>
        </select>
    </div>
    <div class="obj">
        <label for="insuranceFrom">Insurance From</label>
        <input type="date" name="insuranceFrom" id="insuranceFrom" required>
    </div>
    <div class="obj">
        <label for="insuranceTo">Insurance To</label>
        <input type="date" name="insuranceTo" id="insuranceTo" required>
    </div>
    <div class="obj">
        <label for="premium">Premium Amount</label>
        <input type="number" name="premium" id="premium" required>
    </div>
    <div class="obj">
        <label for="processingChgs">Processing Charges</label>
        <input type="number" name="processingChgs" id="processingChgs" required>
    </div>
    <div class="obj">
        <label for="mortgageChgs">Mortgage Charges</label>
        <input type="number" name="mortgageChgs" id="mortgageChgs" required>
    </div>
    <div class="obj">
        <label for="stampChgs">Stamp Charges</label>
        <input type="number" name="stampChgs" id="stampChgs" required>
    </div>
    <div class="obj">
        <label for="inspectionChgs">Inspection Charges</label>
        <input type="number" name="inspectionChgs" id="inspectionChgs" required>
    </div>
    <div class="obj">
        <label for="vettingChgs">Vetting Charges</label>
        <input type="number" name="vettingChgs id=" vettingChgs" required>
    </div>
    <div class="obj">
        <label for="postSancInsp">Post Sanction Inspection</label>
        <select name="postSancInsp" id="postSancInsp">
            <option value="None">----</option>
            <option value="Available">Available</option>
            <option value="Not Available">Not Available</option>
        </select>
    </div>
    <input type="hidden" name="action" value="acctAdd">
    <button type="submit" class="subBtn">Add</button>
</form>