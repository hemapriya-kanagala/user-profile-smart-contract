# UserProfile Smart Contract
Hi! This is a smart contract I made using Solidity. It lets users register and update their profile information on the blockchain.
## What This Contract Does
The main idea is to let each person create a personal profile. That includes:
- Their name  
- Their age  
- Their email  
- And the time they registered
Each user is linked to their own wallet address, so only they can see or update their profile.
## How It Works
There are three main things you can do with this contract:
### 1. `register(name, age, email)`
This is the function where a user can register for the first time.  
If the user has already registered, it will show an error.
### 2. `updateProfile(name, age, email)`
This lets a user change their profile information — like if they want to update their name or email.
### 3. `getProfile()`
This shows the user their saved profile:  
- their name,  
- age,  
- email,  
- and when they registered.
## A Few More Details
- I used something called a `struct` to store each user's information.  
- All the data is stored safely using the user's wallet address.  
- The contract keeps track of when each person registered using the blockchain’s timestamp.
## Where I Deployed It
I tested and deployed this contract on **Remix**, which is an online tool for writing smart contracts.
## How You Can Test It
1. Open [https://remix.ethereum.org](https://remix.ethereum.org)
2. Copy and paste the contract into a new file.
3. Compile it using Solidity version 0.8.0 or above.
4. Deploy it using the "Remix VM (Prague)" option.
5. Try using the functions:
   - First, register yourself.
   - Then use `getProfile()` to see your info.
   - You can also try updating your profile.
