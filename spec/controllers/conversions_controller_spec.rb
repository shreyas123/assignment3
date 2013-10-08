require 'spec_helper'

describe ConversionsController do
  describe "GET 'index'" do
    
    subject { get 'index' }

    it { should be_success }
    it { should render_template 'index' }
    
  end
end
