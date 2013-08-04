toc = "Table of Contents"
ch1 = ["Chapter 1:","Getting Started","page 1"] 
ch2 = ["Chapter 2:","Numbers","page 9"]
ch3 = ["Chapter 3:","Letters","page 13"]
line_width = 20
puts("Table of Contents".center(line_width*2))
puts(ch1[0].ljust(line_width/2) + ch1[1].center(line_width) + "page 1".rjust(line_width/2))
puts(ch2[0].ljust(line_width/2) + ch2[1].center(line_width) + "page 9".rjust(line_width/2))
puts(ch3[0].ljust(line_width/2) + ch3[1].center(line_width) + "page 13".rjust(line_width/2))