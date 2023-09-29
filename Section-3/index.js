// STEP 3

var user_input = 30;
var isPrime;
var list = []
const isPrimeCheck = (user_input) =>
{
    
    
    for(let i = 2; i<user_input; i++)
    {
        isPrime = false;
        
        for(let j = 2; j <i ;j++)
        {
            if(i%j == 0)

            {
                isPrime = true;
            }
        }
        if(!isPrime) 
        {
            list.push(i)
        }
    }
    console.log(list)
    

} 

isPrimeCheck(user_input)