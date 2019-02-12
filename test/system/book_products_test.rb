require "application_system_test_case"

class BookProductsTest < ApplicationSystemTestCase
  setup do
    @book_product = book_products(:one)
  end

  test "visiting the index" do
    visit book_products_url
    assert_selector "h1", text: "Book Products"
  end

  test "creating a Book product" do
    visit book_products_url
    click_on "New Book Product"

    fill_in "Buyer", with: @book_product.buyer_id
    fill_in "End date", with: @book_product.end_date
    fill_in "Product", with: @book_product.product_id
    fill_in "Quantity", with: @book_product.quantity
    fill_in "Start date", with: @book_product.start_date
    click_on "Create Book product"

    assert_text "Book product was successfully created"
    click_on "Back"
  end

  test "updating a Book product" do
    visit book_products_url
    click_on "Edit", match: :first

    fill_in "Buyer", with: @book_product.buyer_id
    fill_in "End date", with: @book_product.end_date
    fill_in "Product", with: @book_product.product_id
    fill_in "Quantity", with: @book_product.quantity
    fill_in "Start date", with: @book_product.start_date
    click_on "Update Book product"

    assert_text "Book product was successfully updated"
    click_on "Back"
  end

  test "destroying a Book product" do
    visit book_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Book product was successfully destroyed"
  end
end
