(async() =>{
    let accounts = await web3.eth.getAccounts();
    let balance = await web3.eth.getBalance(accounts[0]);
    console.log(web3.utils.fromWei(balance,"ether"));

})()