// =============================================
// CHAPTER 1: KHI CÒN CHƯA BIẾT ĐI VỀ ĐÂU
// =============================================
VAR interact_phone = false
VAR accept_invitation = false
VAR talked_discuss = false
VAR talked_hallway2 = false
VAR talked_hallway3 = false
VAR talked_libarian = false
VAR chose_book1 = false
VAR chose_book2 = false
VAR chose_book3 = false

-> ch1_Start
// ----------- Cutscene đầu ch1 ----------
 
 === ch1_Start ===
 -> ch1_InRoom
 
 === ch1_InRoom ===
 Màn hình máy tính sáng lên trong căn phòng trọ bao bọc trong tĩnh lặng và bóng tối. Chỉ có tiếng nhạc game đơn điệu phát ra từ máy tính cùng âm thanh gõ bàn phím lạch cạch của Nam. #bg:dom

Thực tập xong rồi. Môn cũng hết rồi. #speaker:Nam #sprite:nam_thinking
Mọi thứ đáng lẽ phải nhẹ nhõm hơn chứ? #speaker:Nam #sprite:nam_thinking
Vậy mà sao mình lại thấy trống rỗng thế này...#speaker:Nam #sprite:nam_bored
* [Tiếp tục chơi game]
    -> ch1_PlayGame
* [Nhìn ra ngoài cửa sổ]
    -> ch1_Window

=== ch1_PlayGame ===
Cứ chơi thêm một ván nữa. Rồi lại một ván nữa. #bg: black
Cái cảm giác vô định này... #speaker:Nam #sprite:nam_bored
Mình ko thích nó!! #speaker:Nam #sprite: nam_angry
Haizzzzz...Chán vậy nhể!!! #speaker:Nam #sprite:nam_bored #bg:dom
-> ch1_Discord

=== ch1_Window ===
Sau khi kéo rèm cửa có tia sáng chiếu rọi khắp phòng trải lên khuôn mặt Nam một ánh vàng với nét mặt buồn vì chán khi mất dần động lực. #bg:dom_pull_curtain
Mình đang làm gì với đời vậy nhờ?? #speaker:Nam #sprite:nam_thinking 
    -> ch1_Interact_Phone
    
// ----------- Tại lobby tương tác với điện thoại ----------
=== ch1_Interact_Phone ===
{ interact_phone == false:
    ~ interact_phone = true
    -> ch1_Discord
- else:
    -> ch1_Interact_Phone_Repeat
}
=== ch1_Discord ===
_"Ting!!!!!"_
"Bạn có một thông báo mới từ Discord." #bg:black_with_phone
"Êy cu, làm đồ án tốt nghiệp với tao ko?" #speaker:Phong 
"Đằng nào tao với mày cũng xong mấy môn sớm," #speaker:Phong 
"Thì tại sao hai tụi mình ko làm đồ án sớm luôn chứ nhỉ??" #speaker:Phong 
-> ch1_Think

=== ch1_Think ===
Uầyyy!!! Nó rủ mình làm đồ án chung này. #speaker:Nam #sprite:nam_surprise
Cơ mà mình lỡ thất bại thì sao? #speaker:Nam #sprite:nam_thinking
Nếu mình ko đủ giỏi thì sao? #speaker:Nam #sprite:nam_thinking
#speaker:Nam
Lỡ mà kéo nó xuống chung với mình thì sao? #speaker:Nam #sprite:nam_thinking
-> ch1_Decision

=== ch1_Decision ===
"Quen mày lâu rồi, tao hiểu tính mày nên tao mới rủ đấy" #speaker:Phong
"Chứ mấy đứa khác tao không yên tâm. Làm đồ án chung mà không hợp cạ mệt lắm" #speaker:Phong
"Thế chú có tính làm ko?" #speaker:Phong 
+ [Đồng ý]
    -> ch1_Accept
    
+ [Lưỡng lự]
    ... #speaker:Nam #sprite:nam_confused
    Đằng nào cũng đang rảnh chán. #speaker:Nam #sprite:nam_talk
    -> ch1_Accept
    
=== ch1_Accept ===
"Kay" #speaker:Nam #sprite:nam_smile
"Công việc thế nảo hả, cộng sự" #speaker:Nam #sprite:nam_smile
~ accept_invitation = true
-> DONE

=== ch1_Interact_Phone_Repeat ===
Hiện tại bạn có 0 thông báo.
-> DONE

=== ch1_OneWeekLater ===
#bg:one_week_later
-> ch1_IdeaLoop

// ----------- Cutscene sau lobby1 ----------
=== ch1_IdeaLoop ===
Đồ án làm thử AI không? #speaker:Phong #sprite:phong_talk
Hả? Làm thử? Mày tính làm thử AI á? #speaker:Nam #sprite:nam_talk
Mày biết đồ án AI nặng cỡ nào không?  #speaker:Nam #sprite:nam_talk
Từ lọc cả ngàn ảnh, đánh dấu vật thể, gắn tag cho từng ảnh thôi là cực hình rồi. #speaker:Nam #sprite:nam_talk
Chưa tính đến code hay ý tưởng đề tài phải thật sáng tạo thì mày nhắm 2 đứa làm nổi không? #speaker:Nam #sprite:nam_talk

Thế sao hai đứa không thử làm Web? #speaker:Nam #sprite:nam_thinking
Ờ, rồi làm giống mấy chục nhóm khác. #speaker:Phong #sprite:phong_talk
Xong mang lên hội đồng so xem ai đẹp hơn à? #speaker:Phong #sprite:phong_talk
Chán lắm, đổi món đi!! #speaker:Phong #sprite:phong_bored

Thế Blockchain thì sao? #speaker:Phong #sprite:phong_talk
Lỡ mà thành công thì hai thằng tung luôn coin ra thị trường luôn. #speaker:Phong #sprite:phong_smile
Vừa có đồ án tốt nghiệp vừa có dự án khởi nghiệp. #speaker:Phong #sprite:phong_smile
Hehe #speaker:Phong #sprite:phong_smile

Nghe vui đấy. #speaker:Nam #sprite:nam_talk
Vậy để tao BlockIdea mày đã nhé. #speaker:Nam #sprite:nam_talk
Hai đứa chả biết gì về Blockchain cả. #speaker:Nam #sprite:nam_talk
Thì mày tính hai đứa làm đồ án kiểu gì? #speaker:Nam #sprite:nam_talk
Vừa ngồi học vừa làm à? #speaker:Nam #sprite:nam_bored

... #speaker:Nam #sprite:nam_exhaust
... #speaker:Phong #sprite:phong_exhaust
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
Để tao lên thư viện kiếm ý tưởng. #speaker:Nam #sprite:nam_talk
Mày ở nhà lên mạng kiếm đê, biết đâu kiếm được ý tưởng hay thì sao? #speaker:Nam #sprite:nam_talk

Oke! Có gì tao gọi lại. #speaker:Phong #sprite:phong_talk

Kay. #speaker:Nam #sprite:nam_talk
-> DONE

=== ch1_Discuss_1_Repeat ===
Về nhớ mua gì ăn cho hai đứa nhá!! #speaker:Phong #sprite:phong_smile
-> DONE

// ----------- Cutscene chạy đến thư viện (hallway 1) ----------

// ----------- Tại map1 hallway 1 ----------
=== ch1_HallWay_1 ===
{ talked_libarian == false:
    ~ talked_libarian = true
    -> ch1_Talked_Libarian_FirstTime
- else:
    -> ch1_Talked_Libarian_Repeat
}

=== ch1_Talked_Libarian_FirstTime ===
Em đến kiếm sách gì à? #speaker:Thủ thư #sprite:libarian_talk
Thư viện có tủ sách nào liên quan đến công nghệ thông tin không ạ? #speaker:Nam #sprite:nam_talk
Hmm... #speaker:Thủ thư #sprite:libarian_talk
Em kiểm tra thử dãy sách ở hành lang nha. #speaker:Thủ thư #sprite:libarian_talk
Vâng, em cảm ơn chị. #speaker:Thủ thư #sprite:libarian_talk
À, nhớ tránh các bạn đang đọc sách với cô lao công, cẩn thận va trúng mấy bạn. #speaker:Thủ thư #sprite:libarian_talk
->DONE

=== ch1_Talked_Libarian_Repeat ===
Có nhiều sách mới nhập về, em xem thử có sách của em không? #speaker:Thủ thư #sprite:libarian_talk
-> DONE

// ----------- Bước vô map1 level1 ----------

// ----------- Trong map1 hallway2 ----------
=== ch1_HallWay_2 ===
{ talked_hallway2 == false:
    ~ talked_hallway2 = true
    -> ch1_HallWay_2_FirstTime
- else:
    -> ch1_HallWay_2_Repeat
}

=== ch1_HallWay_2_FirstTime ===
Cả tủ sách chỉ có 3 cuốn là xài được. #speaker:Nam #sprite:nam_thinking
Mình nên lấy cuốn nào đây ta? #speaker:Nam #sprite: nam_talk
-> ch1_Choose_Book

=== ch1_Choose_Book ===
{ not chose_book1:
    + [300 bài code thanh niên]
    ~ chose_book1 = true
    Nội dung hơi chung chung, cuốn này không xài được rồi, haizz... #speaker:Nam #sprite:nam_thinking
    -> ch1_Choose_Book
}

{ not chose_book2:
    + [Sáng tạo trong IT, hãy bùng nổ kiến thức]
    ~ chose_book2 = true
    "....Để trở nên sáng tạo trong lập trình, hãy lập trình những thứ mà mình thích và tận hưởng những khó khăn của nó."
    Hmm... #speaker:Nam #sprite:nam_thinking
    Vẫn chưa kiếm ra ý tưởng từ sách này. #speaker:Nam #sprite:nam_thinking
    -> ch1_Choose_Book
}

{ not chose_book3:
    + [Hướng dẫn xây dựng thế giới từ 0 và 1]
    ~ chose_book3 = true
    Ra đây là sách hướng dẫn lập trình game à!? #speaker:Nam #sprite:nam_thinking
    Cũng thú vị, để mang vể đọc thử #speaker:Nam #sprite:nam_thinking
    -> ch1_After_Choose_Book
}

=== ch1_After_Choose_Book ===
_"Ring Ring!!!"_
Mày kiếm được gì rồi à? #speaker:Nam #sprite:nam_talk
Tao kiếm được.... #speaker:Phong #sprite:phong_talk
Dark Soup 3 mới ra mắt, chơi luôn không cu. #speaker:Phong #sprite:phong_talk
Nghe nói game lần này giải đố nhiều lắm đấy! #speaker:Phong #sprite:phong_talk
Uầy hay, tao với mày đợi game cũng phải nửa năm rồi đấy!! #speaker:Nam #sprite:nam_talk
Đợi tao về chơi luôn, tao cấm mày chơi trước!! #speaker:Nam #sprite:nam_talk
OKê #speaker:Phong #sprite:phong_smile
-> DONE

=== ch1_HallWay_2_Repeat ===
Có một cuốn sách bị thiếu trên kệ có lẽ đang nằm trong tay bạn.
-> DONE

// ----------- Bước vô map1 level2 ----------

// ----------- Trong map1 hallway3 ----------
=== ch1_HallWay_3 ===
{ talked_hallway3 == false:
    ~ talked_hallway3 = true
    -> ch1_HallWay_3_FirstTime
- else:
    -> ch1_HallWay_3_Repeat
}

=== ch1_HallWay_3_FirstTime ===
Em kiếm được sách chưa nhỉ? #speaker:Thủ thư #sprite:libarian_talk
Có rồi chị ơi. #speaker:Nam #sprite: nam_talk
... #speaker:Thủ thư #sprite:libarian_talk
Hướng dẫn làm game à, làm chị nhớ đến khoá trước cũng có người làm đồ án game. #speaker: Thủ thư #sprite: libarian_smile
... #speaker:Nam #sprite:nam_thinking
// them cau dan
Của em đây nha, nhớ trả sách vào tuần sau nhe #speaker:Thủ thư #sprite:libarian_talk
Em cảm ơn chị! #speaker:Nam #sprite: nam_talk
-> DONE

=== ch1_HallWay_3_Repeat ===
Nhớ trả sách vào tuần sau nhes. #speaker:Thủ thư #sprite:libarian_talk

// ----------- Bước vô map1 level3 ----------

// ----------- Tại đích ----------
_"Ring Ring!!!"_
Về chưa đấy. #speaker:Phong #sprite:phong_talk
Không về nhanh cẩn thận tao chơi trước đấy nhá. #speaker:Phong #sprite:phong_talk
-> DONE

// ----------- Cutscene sau khi chơi game xong tại phòng trọ ----------
=== ch1_Ending_Cutscene ===
#bg: dom_friend
Game cuốn thật. #speaker:Nam #sprite:nam_talk
Nhìn đơn giản vậy mà giải đố cũng căng phết. #speaker:Phong #sprite:phong_talk
Ừ. #speaker:Nam #sprite:nam_talk

Cơ mà tao lại thích kiểu puzzle nhanh gọn hơn. #speaker:Phong #sprite:phong_smile
Kiểu mỗi màn giải một cái là xong ấy. #speaker:Phong #sprite:phong_smile

Giống tao. #speaker:Nam #sprite:nam_smile
... #speaker:Nam #sprite:nam_thinking

À mà. #speaker:Nam #sprite:nam_thinking
Hồi chiều tao lên thư viện ấy. #speaker:Nam #sprite:nam_talk
Kiếm được gì không? #speaker:Phong #sprite:phong_talk
Ban đầu toàn sách linh tinh thôi. #speaker:Nam #sprite:nam_talk

{chose_book2:
    Cơ mà nãy tao kiếm được 1 câu cũng hay. #speaker:Nam #sprite:nam_talk
    "Nếu muốn sáng tạo, hãy làm thứ mà mình thật sự thích." #speaker:Nam #sprite:nam_talk
    Ban đầu nó không liên quan tới đồ án nên tao cũng không để tâm lắm. #speaker:Nam #sprite:nam_talk
    Giờ nghĩ lại thì câu đấy nó lại đúng trong trường hợp này. #speaker:Nam #sprite:nam_talk
    ... #speaker:Phong #sprite:phong_thinking
}

Trong đống linh tinh đấy thì tao kiếm được cuốn hướng dẫn lập trình game. #speaker:Nam #sprite:nam_talk
Thấy thú vị thì tao mang về xem thử. #speaker:Nam #sprite:nam_talkư

À mà nhắc mới nhớ. #speaker:Nam #sprite:nam_surprise
Hồi nãy chị thủ thư kể khoá trước cũng từng có nhóm làm đồ án game rồi. #speaker:Nam #sprite:nam_talk
Nghe nói làm cũng ổn phết. #speaker:Nam #sprite:nam_talk
Thật à! #speaker:Phong #sprite:phong_surprise

Ừ. #speaker:Nam #sprite:nam_smile
Mà nghĩ lại thì... #speaker:Nam #sprite:nam_thinking
Cả tao với mày đều thích game mà nhỉ. #speaker:Nam #sprite:nam_talk

Ừ thì... thích thật. #speaker:Phong #sprite:phong_smile
Hai đứa mình cũng cày nát bao nhiêu game rồi còn gì. #speaker:Phong #sprite:phong_talk

Ừ. #speaker:Nam #sprite:nam_smile
Thế nên tao mới nghĩ... #speaker:Nam #sprite:nam_talk

Hay là... #speaker:Nam #sprite:nam_thinking
ĐỒ ÁN TỐT NGHIỆP, làm con puzzle game như cái cách tao với mày muốn. #speaker:Nam #sprite:nam_talk
Tao thấy nó thú vị đấy chứ. #speaker:Nam #sprite:nam_talk
... #speaker:Phong #sprite:phong_surprise
... #speaker:Phong #sprite:phong_thinking
... #speaker:Phong #sprite:phong_smile
Tao cũng thấy ý tưởng thú vị đấy. #speaker:Phong #sprite:phong_smile
Biết đâu sau này có người khác lại chơi game của tụi mình. #speaker:Phong #sprite:phong_smile
Thế bắt đầu từ đâu đây? #speaker:Phong #sprite:phong_talk

Từ cái đơn giản nhất thôi. #speaker:Nam #sprite:nam_smile
Nghĩ gameplay trước. #speaker:Nam #sprite:nam_talk
Sau đó mới tới map với cốt truyện. #speaker:Nam #sprite:nam_talk

... #speaker:Nam #sprite:nam_smile
... #speaker:Phong #sprite:phong_smile
-> DONE
// ----------- Nhặt được vật phẩm ----------
=== ch1_GetItem ===
Bạn vừa nhặt được 1 vật phẩm.
-> END 
