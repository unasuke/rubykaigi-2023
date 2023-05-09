@default_foreground ||= @foreground
@default_background ||= @background
@default_shadow_color ||= @shadow_color

rubykaigi_color        = '#2c2c31'
rubykaigi_purple       = '#41414f'
@default_font          = 'Montserrat'
@font_family           = find_font_family(@default_font)
@bold_font             = @default_font
@bold_font_family      = find_font_family(@bold_font)
@monospace_font        = 'HackGen'
@monospace_font_family = find_font_family(@monospace_font)

@default_item1_mark_color = rubykaigi_purple
@default_item2_mark_color = rubykaigi_purple

@xxxx_large_font_size = screen_size(10 * Pango::SCALE)
@xxx_large_font_size  = screen_size(8 * Pango::SCALE)
@xx_large_font_size   = screen_size(6 * Pango::SCALE)
@x_large_font_size    = screen_size(4.5 * Pango::SCALE)
@large_font_size      = screen_size(4 * Pango::SCALE)
@normal_font_size     = screen_size(3.5 * Pango::SCALE)
@small_font_size      = screen_size(3.2  * Pango::SCALE)
@x_small_font_size    = screen_size(3 * Pango::SCALE)
@xx_small_font_size   = screen_size(2.8 * Pango::SCALE)
@xxx_small_font_size  = screen_size(2.5 * Pango::SCALE)
@script_font_size            = @x_small_font_size
@large_script_font_size      = @small_font_size
@x_large_script_font_size    = @large_font_size
@title_slide_title_font_size = @xxx_large_font_size

@block_quote_fill_color = "#f8f8f8"
@preformatted_fill_color = "#f8f8f8"
@default_headline_line_color = rubykaigi_color
@description_term_line_color = @default_headline_line_color

@title_slide_background_image = 'img/theme/title.png'
@slide_background_image = 'img/theme/background.png'

# set_foreground(@default_foreground)
# set_background(@default_background)

add_image_path("ruby-images")
include_theme("default-icon")
include_theme("default-title-text")
include_theme("default-text")
include_theme("default-title-slide")
include_theme("default-slide")
include_theme("default-item-mark")
include_theme("default-method-list")
include_theme("default-preformatted")
include_theme("default-block-quote")
include_theme("default-foot-text")
include_theme("default-description")
include_theme("image")
include_theme("table")
include_theme("newline-in-slides")
include_theme("per-slide-background-color")
include_theme("background-image-toolkit")
include_theme("per-slide-background-image")
include_theme("body-background-image")
include_theme("tag")
include_theme("syntax-highlighting")
include_theme("default-comment")

include_theme("title-slide-background-image")
include_theme("slide-background-image")

match(TitleSlide, Title) do |titles|
  # titles.padding_top = @space * 28
  titles.prop_set("size", screen_size(4.9 * Pango::SCALE))
  titles.prop_set("weight", "SemiBold")
end

match(Slide, HeadLine) do |heads|
  heads.prop_set("size", @large_font_size)
  heads.prop_set("weight", "bold")
end

match(TitleSlide) do |slides|
  slides.vertical_centering = true
  slides.margin_left = 0
  slides.margin_right = 500
  slides.prop_set("foreground", rubykaigi_color)
  slides.prop_set("weight", "Bold")
end

match(TitleSlide, Subtitle) do |subtitle|
  subtitle.margin_top = -20
  subtitle.prop_set("weight", "normal")
  subtitle.prop_set("size", @large_font_size)
end
match(TitleSlide, Author) do |author|
  author.margin_top = 25
  author.prop_set("weight", "normal")
end
match(TitleSlide, Place) do |place|
  place.prop_set("weight", "normal")
  place.prop_set("size", @small_font_size)
end
match(TitleSlide, Date) do |date|
  date.prop_set("weight", "normal")
end
match(TitleSlide, ContentSource) do |cs|
  cs.prop_set("weight", "normal")
end
match(TitleSlide, "*") do |elems|
  # elems.horizontal_centering = true
end
match(Slide) do |slide|
  slide.prop_set("foreground", rubykaigi_color)
end

match("**", Paragraph) do |texts|
  texts.prop_set("weight", "medium")
end

pp "reloaded!"
