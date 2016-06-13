module Text
	def text(format,subjects,marks)
		
		File.open("resume.txt",'w') {|file| file.write(subjects)}
		File.open("resume.txt","a") {|file| file.write(marks)}
	end
end