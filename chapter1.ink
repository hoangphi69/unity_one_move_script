// =============================================
// CHAPTER 1: KHI CÒN CHƯA BIẾT ĐI VỀ ĐÂU
// =============================================
VAR accept_invitation = false
VAR talked_discuss = false
VAR talked_hallway1 = false
VAR talked_hallway2 = false
VAR talked_libarian = false
VAR chose_book1 = false
VAR chose_book2 = false
VAR chose_book3 = false

-> ch1_Start
// ----------- Cutscene đầu ----------
 
 === ch1_Start ===
 -> ch1_InRoom
 
 === ch1_InRoom ===
 Màn hình máy tính sáng lên trong căn phòng trọ bao bọc trong tĩnh lặng và bóng tối. Chỉ có tiếng nhạc game đơn điệu phát ra từ máy tính cùng âm thanh gõ bàn phím lạch cạch của Minh.

Thực tập xong rồi. Môn cũng hết rồi. #speaker: Minh #sprite: minh_thinking
Mọi thứ đáng lẽ phải nhẹ nhõm hơn chứ? #speaker: Minh #sprite: minh_thinking
Vậy mà sao mình lại thấy trống rỗng thế này...#speaker: Minh #sprite: minh_bored
*[Tiếp tục chơi game]
    -> ch1_PlayGame
*[Nhìn ra ngoài cửa sổ]
    -> ch1_Window

=== ch1_PlayGame ===
Cứ chơi thêm một ván nữa. Rồi lại một ván nữa 
Cái cảm giác vô định này...#speaker: Minh #sprite: minh_bored
Mình ko thích nó!! #speaker: Minh #sprite: minh_angry
Haizzzzz...Chán vậy nhể!!! #speaker: Minh #sprite: minh_bored
-> ch1_Discord

=== ch1_Window ===
Sau khi kéo rèm cửa có tia sáng chiếu rọi khắp phòng trải lên khuôn mặt Minh một ánh vàng với nét mặt buồn vì chán khi mất dần động lực.
Mình đang làm gì với đời vậy nhờ?? #speaker: Minh #sprite: minh_thinking
    -> ch1_Discord
    
=== ch1_Discord ===
_"Ting!!!!!"_
Bạn có một thông báo mới từ Discord
Êy cu, làm đồ án tốt nghiệp với tao ko? #speaker: Tai 
Đằng nào tao với mày cũng xong mấy môn sớm, #speaker: Tai 
Thì tại sao hai tụi mình ko làm đồ án sớm luôn chứ nhỉ?? #speaker: Tai 
-> ch1_Think

=== ch1_Think ===
Uầyyy, nó rủ mình làm đồ án chung này #speaker: Minh #sprite: minh_surprise
Cơ mà mình lỡ thất bại thì sao? #speaker: Minh #sprite: minh_thinking
Nếu mình ko đủ giỏi thì sao? #speaker: Minh #sprite: minh_thinking
#speaker: Minh
Lỡ mà kéo nó xuống chung với mình thì sao? #speaker: Minh #sprite: minh_thinking
-> ch1_Decision

=== ch1_Decision ===
Quen mày lâu t mới dám rủ mày thôi đấy. #speaker: Tai
Chứ mấy đứa khác thì t chọn học thay thế rồi. #speaker: Tai
Thế chú có tình làm luôn ko? #speaker: Tai
+ [Đồng ý]
    -> ch1_Accept
+ [Im lặng thêm chút]
    ... #speaker: Minh #sprite: minh_confused
    Đằng nào cũng đang rảnh chán #speaker: Minh #sprite: minh_talk
    -> ch1_Accept
    
=== ch1_Accept ===
"Kay". #speaker: Minh #sprite: minh_smile
"Có người hầu cho mày rồi đấy nhá" #speaker: Minh #sprite: minh_smile
~ accept_invitation = true
-> ch1_OneWeekLater

=== ch1_OneWeekLater ===
Một tuần sau
-> ch1_IdeaLoop_1

=== ch1_IdeaLoop_1 ===
Đồ án làm thử AI không? #speaker: Tai #sprite: tai_talk
Làm thử? Mày biết đồ án AI phải làm cực nặng  không? #speaker: Minh #sprite:minh_talk
Đồ án AI làm là phải to đấy m nhắm hai đứa đủ khả năng không?  #speaker: Minh #sprite:minh_talk

Sao hai đứa không thử làm Web? #speaker: Minh #sprite:minh_thinking
Phải rồi nhể, làm Web như bao nhóm khác rồi mang ra hội đồng cạnh tranh như bao đứa khác luôn. #speaker: Tai #sprite: tai_bored
Chán lắm m, đổi món đi!! #speaker: Tai #sprite: tai_bored

Thế làm Blockchain thì sao, làm rồi tao với mày tung thị trường coin mới luôn cho ngầu!! #speaker: Tai #sprite: tai_smile

Vậy để tao BlockIdea mày trước nhá, hai đứa chả biết gì về Blockchain cả thì làm đồ án kiểu gì? #speaker: Minh #sprite: minh_talk

... #speaker: Minh #sprite: minh_exhaust
... #speaker: Tai #sprite: tai_exhaust
-> DONE

// ----------- Thảo luận tại phòng trọ ----------
=== ch1_Discuss_1 ===
{ talked_discuss == false:
    ~ talked_discuss = true
    -> ch1_Discuss_1_FirstTime
- else:
    -> ch1_Discuss_1_Repeat
}

=== ch1_Discuss_1_FirstTime ===
Để tao vô thư viện kiếm ý tưởng #speaker: Minh #sprite: minh_talk
Mày ở nhà lên mạng kiếm đê, biết đâu kiếm được ý tưởng hay thì sao?! #speaker: Minh #sprite: minh_talk

OKê! Khi nào tao kiếm được gì thì gọi. #speaker: Tai  #sprite: talk

Kay #speaker: Minh #sprite: minh_talk
-> DONE

=== ch1_Discuss_1_Repeat ===
Về nhớ mua gì ăn nhá!! #speaker: Tai #sprite: tai_smile
... #speaker: Minh #sprite: minh_talk
Mày thảnh thơi nhể? #speaker: Minh #sprite: minh_talk
Có thực mới lật ra ý tưởng đấy người anh em. #speaker: Tai #sprite: tai_smile
-> DONE

// ----------- Cutscene chạy đến thư viện (Lobby map 1) ----------
=== ch1_Lobby1 ===
{ talked_libarian == false:
    ~ talked_libarian = true
    -> ch1_Talked_Libarian_FirstTime
- else:
    -> ch1_Talked_Libarian_Repeat
}

=== ch1_Talked_Libarian_FirstTime ===
Em đến kiếm sách gì à? #speaker: Thủ thư #sprite: libarian_talk
Thư viện có tủ sách nào liên quan đến công nghệ thông tin không ạ? #speaker: Minh #sprite: minh_talk
Hmm... #speaker: Thủ thư #sprite: libarian_talk
Em kiểm tra thử dãy sách ở hành lang nha. #speaker: Thủ thư #sprite: libarian_talk
Vâng, em cảm ơn chị. #speaker: Thủ thư #sprite: libarian_talk
À, nhớ tránh các bạn đang đọc sách với cô lao công, cẩn thận va trúng mấy bạn. #speaker: Thủ thư #sprite: libarian_talk
->DONE

=== ch1_Talked_Libarian_Repeat ===
Có nhiều sách mới nhập về, em xem thử có sách của em không? #speaker: Thủ thư #sprite: libarian_talk
-> DONE

// ----------- Bước vô map1 level1 ----------

// ----------- Trong map1 hallway1 ----------
=== ch1_HallWay_1 ===
{ talked_hallway1 == false:
    ~ talked_hallway1 = true
    -> ch1_HallWay_1_FirstTime
- else:
    -> ch1_HallWay_1_Repeat
}

=== ch1_HallWay_1_FirstTime ===
Cả tủ sách chỉ có 3 cuốn là xài được. #speaker: Minh #sprite: minh_thinking
Mình nên lấy cuốn nào đây ta? #speaker: Minh #sprite: minh_talk
-> ch1_Choose_Book

=== ch1_Choose_Book ===
{ not chose_book1:
    + [Cẩm nang 101 kiến thức về IT]
    ~ chose_book1 = true
    Nội dung hơi chung chung, cuốn này không xài được rồi, haizz... #speaker: Minh #sprite: minh_thinking
    -> ch1_Choose_Book
}

{ not chose_book2:
    + [Sáng tạo trong IT, hãy bùng nổ kiến thức]
    ~ chose_book2 = true
    "....Để trở nên sáng tạo trong lập trình, hãy lập trình những thứ mà mình thích và tận hưởng những khó khăn của nó."
    Hmm... #speaker: Minh #sprite: minh_thinking
    Vẫn chưa kiếm ra ý tưởng từ sách này. #speaker: Minh #sprite: minh_thinking
    -> ch1_Choose_Book
}

{ not chose_book3:
    + [Hướng dẫn xây dựng thế giới từ 0 và 1]
    ~ chose_book3 = true
    Ra đây là sách hướng dẫn lập trình game à!? #speaker: Minh #sprite: minh_thinking
    Cũng thú vị, để mang vể đọc thử #speaker: Minh #sprite: minh_thinking
    -> ch1_After_Choose_Book
}

=== ch1_After_Choose_Book ===
>*Ring Ring
Mày kiếm được gì rồi à? #speaker: Minh #sprite: minh_talk
Tao kiếm được.... #speaker: Tai #sprite: tai_talk
Dark Soup 3 mới ra mắt, chơi luôn không cu. #speaker: Tai #sprite: tai_talk
Nghe nói game lần này giải đố nhiều lắm đấy! #speaker: Tai #sprite: tai_talk
Uầy hay, tao với mày đợi game cũng phải nửa năm rồi đấy!! #speaker: Minh #sprite: minh_talk
Đợi tao về chơi luôn, tao cấm mày chơi trước!! #speaker: Minh #sprite: minh_talk
OKê #speaker: Tai #sprite: tai_smile
-> DONE

=== ch1_HallWay_1_Repeat ===
Có một cuốn sách bị thiếu trên kệ có lẽ đang nằm trong tay bạn.
-> DONE

// ----------- Trong map1 hallway2 ----------
=== ch1_HallWay_2 ===
{ talked_hallway2 == false:
    ~ talked_hallway2 = true
    -> ch1_HallWay_2_FirstTime
- else:
    -> ch1_HallWay_2_Repeat
}

=== ch1_HallWay_2_FirstTime ===
Em kiếm được sách chưa nhỉ? #speaker: Thủ thư #sprite: libarian_talk
Có rồi chị ơi. #speaker: Minh #sprite: minh_talk
... #speaker: Thủ thư #sprite: libarian_talk
Hướng dẫn làm game à, làm chị nhớ đến khoá trước cũng có người làm đồ án game. #speaker: Thủ thư #sprite: libarian_smile
... #speaker: Minh #sprite: minh_thinking
Của em đây nha, nhớ trả sách vào tuần sau nhe #speaker: Thủ thư #sprite: libarian_talk
Em cảm ơn chị! #speaker: Minh #sprite: minh_talk
-> DONE

=== ch1_HallWay_2_Repeat ===
Nhớ trả sách vào tuần sau. #speaker: Thủ thư #sprite: libarian_talk

// ----------- Tại đích ----------
>* Ring Ring
Về chưa đấy. #speaker: Tai #sprite: tai_talk
Không về nhanh cẩn thận tao chơi trước đấy nhá. #speaker: Tai #sprite: tai_talk

// ----------- Cutscene sau khi chơi game xong tại phòng trọ ----------
Game hay thật đấy. #speaker: Minh #sprite: minh_talk
Giải đố cũng lâu phết. #speaker: Tai #sprite: tai_talk
Cơ mà tao lại thích mấy kiểu giải đố nhanh gọn hơn. #speaker: Tai #sprite: tai_smile
Giống tao luôn. #speaker: Minh #sprite: minh_smile
... #speaker: Minh #sprite: minh_thinking
Ê!!! #speaker: Minh #sprite: minh_talk
Cả tao với mày đều thích chơi game đúng không?
Thì....Ừ? #speaker: Minh #sprite: minh_talk
Sao tao với mày không thử làm game luôn đi nhờ? #speaker: Minh #sprite: minh_talk
... #speaker: Tai #sprite: tai_thinking
Ý tưởng cũng ra trò đấy. #speaker: Tai #sprite: tai_talk
... #speaker: Minh #sprite: minh_smile
... #speaker: Tai #sprite: tai_smile

// ----------- Nhặt được vật phẩm ----------
=== ch1_GetItem ===
Bạn vừa nhặt được 1 vật phẩm.
-> END 
