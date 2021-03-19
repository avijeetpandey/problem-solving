const maximumWealth = (accounts)=> {
    let maxWealth = 0
    
    accounts.forEach((account)=>{
        let wealth = account.reduce((a,b)=>a+b,0)
        maxWealth = Math.max(wealth,maxWealth)
    })
    
    return maxWealth
};