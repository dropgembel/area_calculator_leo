# area_calculator_dropgembel.aleo

Program 
```bash
program area_calculator.aleo {
  // leo run calculate_area 1u32 5u32 0u32
  // leo run calculate_area 2u32 0u32 7u32

    // Function to calculate the area of a square.
    function square_area(side_length: u32) -> u32 {
        return side_length * side_length;
    }

    // Function to calculate the area of a circle.
    function circle_area(radius: u32) -> u32 {
        let pi: u32 = 314u32; // Using an approximation of pi for simplicity
        return pi * radius * radius;
    }

    // Main transition to choose the shape and calculate the area.
    transition calculate_area(shape: u32, side_length: u32, radius: u32) -> u32 {
        if shape == 1u32 {
            // Calculate the area of a square
            return square_area(side_length);
        } else if shape == 2u32 {
            // Calculate the area of a circle
            return circle_area(radius);
        } else {
            // Invalid shape
            // Modify as needed
            return 0u32;
        }
    }
}

```
run  :

Square
```bash
leo run calculate_area 1u32 5u32 0u32
```
Circle
```
leo run calculate_area 2u32 0u32 7u32
```
