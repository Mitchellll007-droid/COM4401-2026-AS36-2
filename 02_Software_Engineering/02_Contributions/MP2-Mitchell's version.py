SIZE_PRICES = {'S': 3.25, 'M': 5.50, 'L': 7.15}
TOP_PRICES = {'0': 0.00, '1': 0.75, '2': 1.35, '3': 2.00, '4+': 2.50}

def check_blank(text):
    return text.strip() == ""

def get_details():
    name, address, phone = "", "", ""
    while check_blank(name): name = input("Enter Name: ")
    while check_blank(address): address = input("Enter Address: ")
    while check_blank(phone): phone = input("Enter Phone: ")
    return name, address, phone

def get_pizzas():
    while True:
        num = int(input("How many pizzas (1-6)? "))
        if 1 <= num <= 6:
            pizza_array = []
            for i in range(num):
                pizza_array.append(["", ""])
            return pizza_array

def get_pizza_choices(num_pizzas):
    pizza_array = []
    
    for i in range(num_pizzas):
        print(f"\n--- Pizza {i + 1} ---")
        size = input("Size (S/M/L): ").upper()
        wants_toppings = input("Extra toppings? (Y/N): ").upper()
        if wants_toppings == 'Y':
            toppings = input("How many? (1, 2, 3, 4+): ")
        else:
            toppings = "0"
        pizza_array.append([size, toppings])
    return pizza_array

def calc_subtotal(pizzas):
    subtotal = 0
    for p in pizzas:
        size, toppings = p[0], p[1]
        subtotal += SIZE_PRICES[size] + TOP_PRICES[toppings]
    return subtotal

def calc_discount(subtotal):
    if subtotal > 20:
        return subtotal * 0.90, "10%"
    return subtotal, "N/A"

def get_delivery():
    choice = input("\nDelivery for £2.50? (Y/N): ").upper()
    if choice == 'Y':
        return 2.50
    return 0.0

def print_bill(name, address, phone, pizza_array, subtotal, discount, delivery, total):
    print("\n--- Pennine Pizza Works Bill ---")
    print(f"Name: {name}")
    print(f"Address: {address}")
    print(f"Phone: {phone}")
    pizza_number = 1
    for pizza in pizza_array:
        size = pizza[0]
        toppings = pizza[1]
        pizza_cost = SIZE_PRICES[size]
        topping_cost = TOP_PRICES[toppings]
        print(f"Pizza {pizza_number}: Size {size} (£{pizza_cost:.2f}) + Toppings {toppings} (£{topping_cost:.2f})")
        pizza_number = pizza_number + 1
    print(f"Subtotal: £{subtotal:.2f}")
    print(f"Discount: {discount}")
    if delivery > 0:
        print(f"Delivery: £{delivery:.2f}")
    else:
        print("Delivery: None")
    print(f"TOTAL:    £{total:.2f}")

def main():
    name, addr, phone = get_details()
    pizza_array = get_pizzas()
    pizza_array = get_pizza_choices(len(pizza_array))
    
    subtotal = calc_subtotal(pizza_array)
    disc_subtotal, disc_rate = calc_discount(subtotal)
    delivery = get_delivery()
    final_total = disc_subtotal + delivery
    print_bill(name, addr, phone, pizza_array, subtotal, disc_rate, delivery, final_total)

main()