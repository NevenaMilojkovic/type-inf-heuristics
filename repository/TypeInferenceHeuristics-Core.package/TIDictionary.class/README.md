TODO: Update this

I'm  the class which stored references to dictionaries used for different type inference heuristics.

When package loads, I initialize all the dictionaries, and create annoucements to continually update static dictionaries. Dynamic dictionary is created when I load, and data for this dictionary is read from the file which should be stored in a repository one level higher than image, and named 'dynamicDictData.csv'. This file is created with Pharo5 used on CogVM.

I am mostly used by Approach and Heuristic class and their subclasses to provide them with data for the corresponding class. 
