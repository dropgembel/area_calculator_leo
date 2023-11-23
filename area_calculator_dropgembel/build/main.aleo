program area_calculator.aleo;



closure square_area:
    input r0 as u32;
    mul r0 r0 into r1;
    output r1 as u32;


closure circle_area:
    input r0 as u32;
    mul 314u32 r0 into r1;
    mul r1 r0 into r2;
    output r2 as u32;


function calculate_area:
    input r0 as u32.private;
    input r1 as u32.private;
    input r2 as u32.private;
    is.eq r0 1u32 into r3;
    call square_area r1 into r4;
    is.eq r0 2u32 into r5;
    call circle_area r2 into r6;
    not r3 into r7;
    and r7 r5 into r8;
    ternary r8 r6 0u32 into r9;
    ternary r3 r4 r9 into r10;
    output r10 as u32.private;
