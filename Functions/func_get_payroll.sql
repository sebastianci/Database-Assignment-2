CREATE OR REPLACE FUNCTION func_get_payroll
  RETURN VARCHAR2
IS
  v_payroll CHAR;
BEGIN
  SELECT payroll
    INTO v_payroll
    FROM PAYROLL_PROCESSING;
    
    RETURN v_payroll;
END;