class ProductTest < ActiveSupport::TestCase
fixtures :products
#...

test "product is not valid without a
product = Product.new(title:
description:
price:
image_url:
unique title" do
products(:ruby).title,"yyy",1,"fred.gif")
assert product.invalid?
assert_equal ["has already been taken"], product.errors[:title]
end

test "product is not valid without a
product = Product.new(title:
description:
price:
image_url:
unique title - i18n" do
products(:ruby).title,"yyy",1,"fred.gif")
assert product.invalid?
assert_equal [I18n.translate('errors.messages.taken')],
product.errors[:title]
end

def new_product(image_url)
Product.new(title:
"My Book Title",
description: "yyy",
price:
1,
image_url:
image_url)
end
test "image url" do
ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg
http://a.b.c/x/y/z/fred.gif }
bad = %w{ fred.doc fred.gif/more fred.gif.more }
ok.each do |name|
assert new_product(name).valid?, "#{name} shouldn't be invalid"
end
bad.each do |name|
assert new_product(name).invalid?, "#{name} shouldn't be valid"
end
end
end
