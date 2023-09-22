# class FooterExemploMapeamentos < SitePrism::section
#     element :img_facebook, 'img[name="follow_facebook"]'
#     element :img_twitter, 'img[name="follow_twitter"]'
# end

# class ProductsExemploMapeamentos < SitePrism::section
#     element :name, 'a.productName'
#     element :price, 'a.price'
# end

# class HomeExemploMapeamentos < SitePrism::Page
#     set_url '/'

#     element :btn_open_search, '#search #menuSearch'
#     elements :menu_items, '.nav-li-links a'
#     # menu_items.first.click
#     # menu_items[2].click

#     section :footer, FooterExemploMapeamentos, 'footer.ng-scope'
#     # footer.img_facebook.click
#     # footer.img_twitter.click
#     sections :products, ProductsExemploMapeamentos, '.categoryRight li.ng-scope'
#     # products[2].price.click
#     # products.last.click
# end