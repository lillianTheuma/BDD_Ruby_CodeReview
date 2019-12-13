### Anagram Detection Method

# Anagram Check - Lillian Theuma
This repository is presented as a method used to determine whether two words are anagrams (i.e. made up of the same letters).

# TABLE OF CONTENTS
```
- GITHUB repository
- Requirements
- Setup
- Usage
- Documentation
  -specs
- Credits
- License Information
```
## Repository

https://github.com/lillianTheuma/BDD_Ruby_CodeReview/

## Requirements

Ruby must be installed on your machine.
https://www.ruby-lang.org/en/downloads/

## Setup

Download project directory in a location of your choosing.

Note: Directory structure must remain intact, or it will not work.


# Usage
Navigate to local directory. The following are command options.

View man page for anagramCheck.rb:

```
ruby anagramCheck.rb -man
```

Run the script:

```
ruby anagramCheck.rb "word1" "word2"
```

Run tests:

```
rspec
```


# Documentation

## Classes
  Anagram
  variables:
  string word1
  string word2
### Methods

  anagram?
  arguments: None

  return: [boolean is_anagram?, int matching_word_count]

  refers to word1 and word2 from its own object. is_anagram? is true if the strings are anagrams (made up of the same letters). matching_word_count is equal to the number of letters matching across the two, regardless of whether is_anagram? is true.

# License
* This repository is offered under the MIT license
@ Lillian Theuma 2019
See LICENSE file for additional details regarding license.

###### Lillian Theuma
###### Epicodus Code Review
