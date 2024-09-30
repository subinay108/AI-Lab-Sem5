#include<bits/stdc++.h>

using namespace std;

bool isAnagram(string s1, string s2){
    unordered_set<char> charSet(s1.begin(), s1.end());
    for(char ch : s2){
        if(charSet.find(ch) == charSet.end()){
            return false;
        }
    }
    return true;
}

int main(){
    vector<string> a = {"bat", "eat", "ate", "tea", "cat", "act"};

    cout << isAnagram("live", "evils") << endl;
}