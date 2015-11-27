CREATE OR REPLACE PROCEDURE proc_payroll_switch
IS
  v_payroll CHAR;
BEGIN
  SELECT payroll
    INTO v_payroll
    FROM PAYROLL_PROCESSING;
  
  IF v_payroll = 'Y' THEN
    UPDATE PAYROLL_PROCESSING
      SET payroll = 'N';
  ELSE
    UPDATE PAYROLL_PROCESSING
      SET payroll = 'Y';
  END IF;
END;

