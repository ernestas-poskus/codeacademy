var cashRegister = {
    total:0,
    add: function(itemCost){
        this.total += itemCost;
    }
};


//call the add method for our items
cashRegister.add(0.98);
cashRegister.add(1.23);
cashRegister.add(4.99);
cashRegister.add(0.45);


//Show the total bill
console.log('Your bill is '+cashRegister.total);

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

var cashRegister = {
    total:0,
//insert the add method here    
    
    
    scan: function(item) {
        switch (item) { 
        case "eggs": 
            this.add(0.98); 
            break;
        
        case "milk": 
            this.add(1.23); 
            break;
        
        //Add other 2 items here
        
        
        }
        return true;
    }
};

//Scan 2 eggs and 3 magazines

//Show the total bill
console.log('Your bill is '+cashRegister.total);







/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////





var cashRegister = {
    total:0,
    add: function(itemCost){
        this.total += itemCost;
    },
    scan: function(item, quanity) {
        switch (item) {
        case "eggs": this.add(0.98 * quanity); break;
        case "milk": this.add(1.23 * quanity); break;
        case "magazine": this.add(4.99 * quanity); break;
        case "chocolate": this.add(0.45 * quanity); break;
        }
    }
};

// scan each item 4 times
cashRegister.scan('eggs', 4);
cashRegister.scan('milk', 4);
cashRegister.scan('magazine', 4);
cashRegister.scan('chocolate', 4);



//Show the total bill
console.log('Your bill is '+cashRegister.total);


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



var cashRegister = {
    total:0,
    lastTransactionAmount: 0,
    //Dont forget to add your property
    add: function(itemCost) {
        this.total +=  itemCost;
        lastTransactionAmount = itemCost;
    },
    scan: function(item,quantity) {
        switch (item) {
        case "eggs": this.add(0.98 * quantity); break;
        case "milk": this.add(1.23 * quantity); break;
        case "magazine": this.add(4.99 * quantity); break;
        case "chocolate": this.add(0.45 * quantity); break;
        }
        return true;
    },
    //Add the voidLastTransaction Method here
    voidLastTransaction: function() {
        this.total -= lastTransactionAmount;
    }
    
};

cashRegister.scan('eggs',1);
cashRegister.scan('milk',1);
cashRegister.scan('magazine',1);
cashRegister.scan('chocolate',4);

//Void the last transaction and then add 3 instead
cashRegister.voidLastTransaction();
cashRegister.scan('chocolate',3);

//Show the total bill
console.log('Your bill is '+cashRegister.total);






/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////






function StaffMember(name,discountPercent){
    this.name = name;
    this.discountPercent = discountPercent;
}

var sally = new StaffMember("Sally",5);
var bob = new StaffMember("Bob",10);

// Create yourself again as 'me' with a staff discount of 20%
var me = new StaffMember('Er',20);

var cashRegister = {
    total:0,
    lastTransactionAmount: 0,
    add: function(itemCost){
        this.total += (itemCost || 0);
        this.lastTransactionAmount = itemCost;
    },
    scan: function(item,quantity){
        switch (item){
            case "eggs": this.add(0.98 * quantity); break;
            case "milk": this.add(1.23 * quantity); break;
            case "magazine": this.add(4.99 * quantity); break;
            case "chocolate": this.add(0.45 * quantity); break;
        }
        return true;
    },
    voidLastTransaction : function(){
        this.total -= this.lastTransactionAmount;
        this.lastTransactionAmount = 0;
    },
    // Create a new method applyStaffDiscount here
    applyStaffDiscount: function(employee) {
        this.total -= (this.total * (employee.discountPercent / 100));
    }

};

cashRegister.scan('eggs',1);
cashRegister.scan('milk',1);
cashRegister.scan('magazine',3);
// Apply your staff discount by passing the 'me' object 
// to applyStaffDiscount
cashRegister.applyStaffDiscount(me);

// Show the total bill
console.log('Your bill is '+cashRegister.total.toFixed(2));



