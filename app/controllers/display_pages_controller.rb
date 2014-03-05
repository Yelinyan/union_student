class DisplayPagesController < ApplicationController
  def home
  	@carousel=Carousel.all
  	@article1=Belong.find_by(name:"学院活动").articles.limit(7)
  	@article2=Belong.find_by(name:"学生会活动").articles.limit(7)
  	@article3=Belong.find_by(name:"通知公告").articles.limit(3)
  end
  
  def about
  end


  def showarticle
  	redirect_to "/articles/show/"+params[:id]
  end


  def display
  	@article=Belong.find_by(name:"团学风采").articles.paginate(:page => params[:page], :per_page => 25)
	@time=(Time.now).strftime("%Y年%m月%d日%H:%M:%S");
  end

  def contribute
  	@article=Belong.find_by(name:"班级建设").articles.paginate(:page => params[:page], :per_page => 25)
	@time=(Time.now).strftime("%Y年%m月%d日%H:%M:%S");
  end

  def download
  	@downloadfile=DownLoadFile.all.paginate(:page => params[:page], :per_page => 25)
	@time=(Time.now).strftime("%Y年%m月%d日%H:%M:%S");
  end

  def down
  	@resource=DownLoadFile.find(params[:id])
	send_file(@resource.asset.path)
  end
end
