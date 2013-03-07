class StaticPagesController < Spree::BaseController

  before_filter :header_layout
  
  def header_layout
  	render :layout => 'spree/layouts/spree_application'
  end
  
  def index
  end

  def women
  	@w_taxon = Spree::Taxon.find(2)
  end

  def men
  end

  def kids
  end

  def story
  end

  def locations
  end

  def contact
  end
end

