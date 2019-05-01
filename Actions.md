1. Look up baggage info associated with ticket/user account

   - Method
     - GET
   - URL
     -  /customers/{customer_id}/tickets/{ticket_id}/baggage/{baggage_id}
   - Input
     - customer_id
     - ticket_id
   - Response
     - A JSON payload of the customer's baggage associated with a particular flight


2. Send accommodation data to in-flight management 

   - Method
     - PUT
   - URL
     - /customers/{customer_id}/flights/{flight_id}/management
   - Input
     - customer_id
     - flight_id
     - accomodation_id
   - Response
     - Success/Fail indicated by a concatenated string returned to the sender.
   - Expected results
     - In-flight management system sends successfully updated results back to confirm the update went through.