CREATE OR REPLACE PROCEDURE proc_month_switch
IS
  v_month_end CHAR;
BEGIN
  SELECT month_end
    INTO v_month_end
    FROM PAYROLL_PROCESSING;
    
  IF v_month_end = 'Y' THEN
    UPDATE PAYROLL_PROCESSING
    SET month_end = 'N';
  ELSE
    UPDATE PAYROLL_PROCESSING
    SET month_end = 'Y';
  END IF;
    
END;