class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_seo_tags

  private

  def set_seo_tags
    set_meta_tags title:        'Sew Unique',
                  description:  'Keep you looking your best since 1981.',
                  keywords:     %w[Sew Unique SewUnique Seamstress Campbell River CampbellRiver Bonnie King BonnieKing],
                  og:  {
                    title:        'Sew Unique',
                    type:         'website',
                    url:          'http://sewuniquebybonnie.com',
                    image:        'https://s3-us-west-2.amazonaws.com/sewunique-production/landing/feature-1.jpg',
                    description:  'Keep you looking your best since 1981.'
                  },
                  twitter: {
                    card:         'summary',
                    url:          'http://sewuniquebybonnie.com',
                    title:        'Sew Unique',
                    image:        'https://s3-us-west-2.amazonaws.com/sewunique-production/landing/feature-1.jpg',
                    description:  'Keep you looking your best since 1981.'
                  }
  end
end
