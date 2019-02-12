require 'test_helper'

class BookProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_product = book_products(:one)
  end

  test "should get index" do
    get book_products_url
    assert_response :success
  end

  test "should get new" do
    get new_book_product_url
    assert_response :success
  end

  test "should create book_product" do
    assert_difference('BookProduct.count') do
      post book_products_url, params: { book_product: { buyer_id: @book_product.buyer_id, end_date: @book_product.end_date, product_id: @book_product.product_id, quantity: @book_product.quantity, start_date: @book_product.start_date } }
    end

    assert_redirected_to book_product_url(BookProduct.last)
  end

  test "should show book_product" do
    get book_product_url(@book_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_product_url(@book_product)
    assert_response :success
  end

  test "should update book_product" do
    patch book_product_url(@book_product), params: { book_product: { buyer_id: @book_product.buyer_id, end_date: @book_product.end_date, product_id: @book_product.product_id, quantity: @book_product.quantity, start_date: @book_product.start_date } }
    assert_redirected_to book_product_url(@book_product)
  end

  test "should destroy book_product" do
    assert_difference('BookProduct.count', -1) do
      delete book_product_url(@book_product)
    end

    assert_redirected_to book_products_url
  end
end
