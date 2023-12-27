# Function to perform addition
function add(x, y)
    return x + y
end

# Function to perform subtraction
function subtract(x, y)
    return x - y
end

# Function to perform multiplication
function multiply(x, y)
    return x * y
end

# Function to perform division
function divide(x, y)
    if y != 0
        return x / y
    else
        return "Cannot divide by zero!"
    end
end

# Main calculator function
function calculator()
    println("Simple Calculator")
    println("1. Addition")
    println("2. Subtraction")
    println("3. Multiplication")
    println("4. Division")
    println("5. Exit")

    choice = parse(Int, readline())

    while choice != 5
        println("Enter first number:")
        num1 = parse(Float64, readline())

        println("Enter second number:")
        num2 = parse(Float64, readline())

        result = 0.0

        if choice == 1
            result = add(num1, num2)
        elseif choice == 2
            result = subtract(num1, num2)
        elseif choice == 3
            result = multiply(num1, num2)
        elseif choice == 4
            result = divide(num1, num2)
        else
            println("Invalid choice. Please enter a number between 1 and 5.")
        end

        println("Result: $result")

        println("\nChoose another operation or enter 5 to exit:")
        choice = parse(Int, readline())
    end

    println("Calculator closed.")
end

# Run the calculator
calculator()