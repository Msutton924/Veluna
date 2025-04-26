import SwiftUI

struct MealPlanView: View {
    let meals = [
        ("Avocado Salmon Salad", 450, 30, 20, 15),
        ("Chicken Pesto Pasta", 600, 40, 50, 18),
        ("Greek Yogurt Parfait", 300, 20, 35, 5),
        ("Grilled Chicken with Quinoa", 520, 45, 40, 15),
        ("Protein Pancakes with Berries", 410, 30, 45, 10),
        ("Beef Stir Fry with Rice", 670, 50, 55, 22),
        ("Turkey Lettuce Wraps", 330, 28, 20, 12),
        ("Vegetarian Buddha Bowl", 480, 18, 60, 16),
        ("Shrimp Tacos with Slaw", 540, 36, 48, 20),
        ("Tofu & Broccoli Stir Fry", 410, 24, 30, 14),
        ("Oatmeal with Almond Butter", 380, 15, 40, 12),
        ("Spinach and Feta Omelette", 320, 28, 6, 18),
        ("Tuna Salad Wrap", 400, 35, 30, 14),
        ("Cottage Cheese with Fruit", 250, 20, 22, 5),
        ("Peanut Butter Banana Smoothie", 450, 25, 40, 18),
        ("Egg White Veggie Scramble", 300, 26, 10, 10),
        ("Greek Chicken Bowl", 600, 42, 50, 20),
        ("Baked Salmon with Asparagus", 550, 46, 10, 30),
        ("Lentil Soup", 400, 22, 50, 8),
        ("Chia Seed Pudding", 280, 12, 25, 14),
        ("Veggie Pasta Primavera", 510, 18, 65, 15),
        ("Sweet Potato Black Bean Tacos", 470, 16, 55, 14),
        ("Almond Crusted Chicken Tenders", 520, 40, 20, 24),
        ("Zucchini Noodles with Pesto", 380, 18, 25, 22),
        ("Brown Rice Sushi Rolls", 430, 15, 55, 10),
        ("Stuffed Bell Peppers", 490, 36, 40, 18),
        ("Turkey Chili", 580, 45, 40, 20),
        ("Quinoa Edamame Salad", 410, 18, 45, 14),
        ("Cajun Shrimp Skillet", 500, 42, 35, 20),
        ("Asian Chicken Lettuce Cups", 380, 32, 20, 14),
        ("Breakfast Burrito", 600, 30, 55, 28),
        ("Grilled Steak Salad", 620, 48, 25, 30),
        ("Tofu Curry with Rice", 540, 28, 50, 18),
        ("BBQ Chicken Pizza (cauliflower crust)", 580, 40, 45, 22),
        ("Spaghetti Squash Bolognese", 490, 30, 35, 18),
        ("Broccoli Cheddar Egg Muffins", 320, 22, 8, 18),
        ("Beef and Sweet Potato Hash", 600, 42, 40, 20),
        ("Smoked Salmon Bagel Thin", 450, 28, 35, 14),
        ("Mango Chicken Rice Bowl", 530, 36, 50, 16),
        ("Vegan Chickpea Curry", 470, 20, 55, 15),
        ("Steak and Egg Breakfast Bowl", 650, 48, 30, 32),
        ("Chicken Caesar Wrap", 560, 38, 40, 22),
        ("Thai Peanut Chicken Salad", 580, 35, 30, 25),
        ("Honey Garlic Shrimp with Veggies", 500, 40, 35, 18),
        ("Avocado Toast with Egg", 390, 18, 30, 20),
        ("Black Bean Quinoa Tacos", 450, 20, 50, 14),
        ("Protein Waffles with Berries", 420, 32, 38, 12),
        ("Chicken Fajita Rice Bowl", 560, 42, 45, 18),
        ("Miso Glazed Salmon", 540, 45, 20, 28),
        ("Buffalo Turkey Meatballs", 490, 36, 22, 20),
        ("Veggie Fried Rice", 470, 14, 55, 16),
        ("Pesto Chicken Pasta", 580, 42, 48, 22),
        ("Turkey Spinach Stuffed Sweet Potato", 540, 38, 45, 18),
        ("Greek Lentil Salad", 450, 20, 55, 12),
        ("Chicken Zoodle Alfredo", 500, 36, 30, 22),
        ("Teriyaki Tofu Bowl", 470, 26, 40, 18),
        ("Egg Salad Wrap", 430, 28, 30, 16),
        ("BBQ Pulled Chicken Sandwich", 610, 45, 50, 20),
        ("Spicy Tuna Sushi Bowl", 540, 42, 35, 18),
        ("Vegan Burrito Bowl", 500, 20, 55, 16),
        ("Stuffed Portobello Mushrooms", 480, 30, 25, 22),
        ("Almond Butter Overnight Oats", 420, 18, 45, 16),
        ("Tuna Avocado Salad", 390, 28, 10, 20),
        ("Korean Beef Rice Bowl", 600, 45, 40, 22),
        ("Sweet Potato Chickpea Curry", 500, 22, 55, 18),
        ("Buffalo Cauliflower Wrap", 450, 18, 50, 14),
        ("Egg White Breakfast Tacos", 340, 24, 20, 10),
        ("Veggie Quinoa Stir Fry", 470, 16, 55, 14),
        ("Greek Yogurt and Granola Bowl", 380, 20, 35, 8),
        ("Spinach Chicken Alfredo", 620, 45, 40, 24),
        ("Tempeh Taco Salad", 480, 26, 40, 18),
        ("Lemon Herb Grilled Chicken", 520, 46, 30, 18),
        ("Thai Basil Beef", 590, 48, 35, 24),
        ("Pasta with Turkey Meat Sauce", 610, 42, 50, 20),
        ("Cauliflower Fried Rice", 420, 16, 30, 14),
        ("Chicken Gyro Plate", 550, 38, 40, 20),
        ("Teriyaki Salmon with Rice", 590, 42, 45, 22),
        ("Avocado Egg Salad", 410, 22, 20, 18),
        ("Pesto Shrimp Zoodles", 470, 36, 20, 20),
        ("Mediterranean Quinoa Salad", 450, 18, 50, 14),
        ("Baked Cod with Couscous", 530, 40, 35, 18),
        ("Vegan Chili", 480, 22, 55, 14),
        ("Blackened Chicken Bowl", 560, 44, 35, 20),
        ("Breakfast Protein Bowl", 610, 40, 30, 26),
        ("Shrimp Fried Cauliflower Rice", 460, 32, 25, 18),
        ("Loaded Sweet Potato Skins", 490, 24, 40, 20),
        ("Caprese Chicken", 530, 40, 20, 24),
        ("Avocado Chickpea Toast", 400, 16, 35, 16),
        ("Vegan Lentil Sloppy Joes", 480, 22, 50, 14),
        ("Seared Tuna Salad", 520, 38, 20, 22),
        ("Grilled Turkey Burgers", 540, 42, 30, 22),
        ("Eggplant Parmesan (baked)", 500, 24, 40, 20),
        ("Roasted Veggie Buddha Bowl", 470, 18, 55, 16),
        ("Beef Burrito Bowl", 620, 48, 45, 24),
        ("Vegan Falafel Wrap", 500, 20, 55, 18),
        ("Chicken Alfredo Zoodles", 520, 38, 30, 20),
        ("Miso Soup with Tofu", 310, 18, 20, 10),
        ("Grilled Swordfish with Veggies", 580, 48, 15, 28),
        ("Breakfast Avocado Smoothie", 420, 20, 40, 16),
        ("Baked Chicken Parmesan", 570, 44, 30, 22)
    ]
    
    var randomMeals: [(String, Int, Int, Int, Int)] {
        Array(meals.shuffled().prefix(5))
    }

    var body: some View {
        List(randomMeals, id: \.0) { meal in
            VStack(alignment: .leading) {
                Text(meal.0)
                    .font(.headline)
                Text("Calories: \(meal.1) | Protein: \(meal.2)g | Carbs: \(meal.3)g | Fat: \(meal.4)g")
                    .font(.subheadline)
            }
            .padding()
        }
        .navigationTitle("Today's Meal Plan")
    }
}
