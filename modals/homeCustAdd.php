<div id="myModal1" class="modal">
    <div class="modal-content">
        <div class="modal-header">
            <span id="close1" class="close">&times;</span>
            <h2>Add Customers</h2>
        </div>
        <div class="modal-body">
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
                    <input type="text" name="phone" id="phone" maxlength="10" required>
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
        </div>
    </div>
</div>