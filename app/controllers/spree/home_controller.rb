module Spree
  class HomeController < Spree::StoreController
    helper 'spree/products'
    respond_to :html

    def index
      @w_taxon  = Spree::Taxon.find(2)
      @searcher = Spree::Config.searcher_class.new(params)
      @searcher.current_user = try_spree_current_user
      @searcher.current_currency = current_currency
      @products = @searcher.retrieve_products
      respond_with(@products)
    end
    
    def women
      @women_featured = Spree::Product.find(2)
      @products = Spree::Product.all
    end
    
  end
end