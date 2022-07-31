SELECT branch_code,
    branch_no,
    c_no,
    cd_type
FROM EMPLOYEE
    WHERE S_CODE = 'C'
        AND (branch_no) NOT IN (
            SELECT branch_code
            FROM DEPARTMENT
            WHERE branch_code = 'ABC'
        )
QUALIFY ROW_NUMBER() OVER (PARTITION BY c_no ORDER BY cd_type) = 1