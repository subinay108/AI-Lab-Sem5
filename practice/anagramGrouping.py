def isAnagram(s1, s2):
    charSet = set(s1)
    for i in s2:
        if i not in charSet:
            return False
    return True


if __name__ == '__main__':
    a = ['bat', 'eat', 'ate', 'tea', 'cat', 'act']

    groups = {}
    for i in a:
        flag = False
        for g in groups:
            if isAnagram(i, g):
                groups[g].append(i)
                flag = True
        if flag == False:
            groups[i] = [i]

    print(groups)        






