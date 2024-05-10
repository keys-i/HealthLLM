DECLARE
    n NUMBER := 1;
    choice NUMBER;
    function_choice NUMBER;
    booking_id NUMBER;
    d VARCHAR2(4000);
    password VARCHAR2(20);
BEGIN
    WHILE n = 1 LOOP
        DBMS_OUTPUT.PUT_LINE('Enter 1 for PASSENGER LOGIN, 2 for MANAGEMENT LOGIN, 3 to EXIT:');
        choice := &choice;
        
        CASE choice
            WHEN 1 THEN 
                DBMS_OUTPUT.PUT_LINE('Enter booking ID:');
                booking_id := &booking_id;
                DBMS_OUTPUT.PUT_LINE('Enter 1 to DISPLAY PASSENGER DETAILS, 2 to CANCEL FLIGHT:');
                function_choice := &function_choice;
                
                CASE function_choice
                    WHEN 1 THEN 
                        -- Replace function call with print statement
                        DBMS_OUTPUT.PUT_LINE('Generating boarding pass for booking ID ' || booking_id);
                        d := 'Sample boarding pass'; -- Placeholder for demonstration
                        DBMS_OUTPUT.PUT_LINE('Boarding pass: ' || d);
                    WHEN 2 THEN
                        DBMS_OUTPUT.PUT_LINE('Ticket cancelled');
                    ELSE
                        DBMS_OUTPUT.PUT_LINE('WRONG INPUT!');
                END CASE;
                
            WHEN 2 THEN
                DBMS_OUTPUT.PUT_LINE('Enter password for management login:');
                password := '&password_for_management_login';
                
                IF password = 'dbmsproject' THEN
                    DBMS_OUTPUT.PUT_LINE('Enter 1 to DISPLAY TODAY''S FLIGHT DETAILS, 2 to UPDATE TIME OF FLIGHTS:');
                    function_choice := &function_choice;
                    
                    CASE function_choice
                        WHEN 1 THEN 	
                            -- Replace function call with print statement
                            DBMS_OUTPUT.PUT_LINE('Displaying all flights today');
                        WHEN 2 THEN
                            DBMS_OUTPUT.PUT_LINE('Update time of flights');
                        ELSE
                            DBMS_OUTPUT.PUT_LINE('WRONG INPUT!');
                    END CASE;
                    
                ELSE
                    DBMS_OUTPUT.PUT_LINE('WRONG PASSWORD! You cannot access management functions. Try again.');
                END IF;
                
            WHEN 3 THEN
                n := 0;
                
            ELSE
                DBMS_OUTPUT.PUT_LINE('WRONG INPUT!');
                
        END CASE;
        
    END LOOP;   		
END;
/
