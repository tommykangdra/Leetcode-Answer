word_list = ['aacd', 'aabd', 'cccc', 'dddd']

def find_one_difference(word_list):
    set_list = []

    for i in range(len(word_list)):
        set_list.append(set([(char, j) for j, char in enumerate(word_list[i])]))
        print(set_list)
        if i > 0:
            if (len(set_list[0].difference(set_list[i])) == 1):
                return True
    return False

find_one_difference(word_list)
