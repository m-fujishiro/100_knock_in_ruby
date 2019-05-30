# 00. 文字列の逆順
# 文字列"stressed"の文字を逆に（末尾から先頭に向かって）並べた文字列を得よ．
str = "stressed"
puts str.reverse

# 01. 「パタトクカシーー」
# 「パタトクカシーー」という文字列の1,3,5,7文字目を取り出して連結した文字列を得よ．
str = "パタトクカシーー"
str = str[0] + str[2] + str[4] + str[6]
puts str

# 03. 円周率
# "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."という文を単語に分解し，各単語の（アルファベットの）文字数を先頭から出現順に並べたリストを作成せよ．
str = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."
str2 = []
while str.count(" ") > 0 do
    str2.push(str[/\w+/].size)
    str.slice!(/\w+,?\s/)
end
puts str2.join("")

# 04. 元素記号
#"Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."という文を単語に分解し，
# 1, 5, 6, 7, 8, 9, 15, 16, 19番目の単語は先頭の1文字，それ以外の単語は先頭に2文字を取り出し，取り出した文字列から単語の位置（先頭から何番目の単語か）への連想配列（辞書型もしくはマップ型）を作成せよ．
str = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
str2 = []
str3 = {}
while str.count(" ") > 0 do
    str2.push(str[/\w+/])
    str.slice!(/\w+,?.?\s/)
end
str2.each_with_index do |element, i|
    hoge = [0, 4, 5, 6, 7, 8, 14, 15, 18].include?(i) ? element.chr : element[0, 2]
    str3[hoge] = i + 1
end
puts str3

# 05. n-gram
# 与えられたシーケンス（文字列やリストなど）からn-gramを作る関数を作成せよ．この関数を用い，"I am an NLPer"という文から単語bi-gram，文字bi-gramを得よ．
# n-gram: 任意の文字列や文書を連続したn個の文字で分割するテキスト分割方法
def n_gram(n)
    # TODO:処理を書く
end
