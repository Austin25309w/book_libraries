class BookLibrariesController < ApplicationController
  before_action :set_book_library, only: [:show, :edit, :update, :destroy]

  # GET /book_libraries
  # GET /book_libraries.json
  def index
    @book_libraries = BookLibrary.all
  end

  def import
    BookLibrary.my_import(params[:file])
    redirect_to root_url, notice: "Successfully Imported Data"
  end

  # GET /book_libraries/1
  # GET /book_libraries/1.json
  def show
  end

  # GET /book_libraries/new
  def new
    @book_library = BookLibrary.new
  end

  # GET /book_libraries/1/edit
  def edit
  end

  # POST /book_libraries
  # POST /book_libraries.json
  def create
    @book_library = BookLibrary.new(book_library_params)

    respond_to do |format|
      if @book_library.save
        format.html { redirect_to @book_library, notice: 'Book library was successfully created.' }
        format.json { render :show, status: :created, location: @book_library }
      else
        format.html { render :new }
        format.json { render json: @book_library.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_libraries/1
  # PATCH/PUT /book_libraries/1.json
  def update
    respond_to do |format|
      if @book_library.update(book_library_params)
        format.html { redirect_to @book_library, notice: 'Book library was successfully updated.' }
        format.json { render :show, status: :ok, location: @book_library }
      else
        format.html { render :edit }
        format.json { render json: @book_library.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_libraries/1
  # DELETE /book_libraries/1.json
  def destroy
    @book_library.destroy
    respond_to do |format|
      format.html { redirect_to book_libraries_url, notice: 'Book library was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_library
      @book_library = BookLibrary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_library_params
      params.require(:book_library).permit(:title, :description, :book_pages, :author, :rating)
    end
end
