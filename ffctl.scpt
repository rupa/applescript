FasdUAS 1.101.10   ��   ��    k             l     ��  ��    9 3 makes firefox slide in from the side of the screen     � 	 	 f   m a k e s   f i r e f o x   s l i d e   i n   f r o m   t h e   s i d e   o f   t h e   s c r e e n   
  
 l     ��  ��    0 * run as a trigger in quicksilver or butler     �   T   r u n   a s   a   t r i g g e r   i n   q u i c k s i l v e r   o r   b u t l e r      l     ��  ��    &   works best with only one window     �   @   w o r k s   b e s t   w i t h   o n l y   o n e   w i n d o w      l     ��  ��      v0.04 by rupa@lrrr.us     �   ,   v 0 . 0 4   b y   r u p a @ l r r r . u s      l     ��������  ��  ��        l    � ����  O     �    k    �      ! " ! l   ��������  ��  ��   "  # $ # l   �� % &��   %   if firefox isn't open    & � ' ' ,   i f   f i r e f o x   i s n ' t   o p e n $  (�� ( Z    � ) *�� + ) l    ,���� , H     - - l    .���� . I   �� /��
�� .coredoexbool       obj  / 4    �� 0
�� 
pcap 0 m     1 1 � 2 2  f i r e f o x - b i n��  ��  ��  ��  ��   * k     3 3  4 5 4 I   �� 6��
�� .miscactvnull��� ��� null 6 m     7 7�                                                                                  MOZB  alis    4  fry                        �_CH+    3Firefox.app                                                     a�Qm^        ����  	                Applications    �_œ      �Q��      3  fry:Applications:Firefox.app    F i r e f o x . a p p    f r y  Applications/Firefox.app  / ��  ��   5  8�� 8 l   ��������  ��  ��  ��  ��   + k    � 9 9  : ; : O   & < = < r    % > ? > n    # @ A @ m   ! #��
�� 
nmbr A 2   !��
�� 
cwin ? o      ���� 0 z   = m     B B�                                                                                  MOZB  alis    4  fry                        �_CH+    3Firefox.app                                                     a�Qm^        ����  	                Applications    �_œ      �Q��      3  fry:Applications:Firefox.app    F i r e f o x . a p p    f r y  Applications/Firefox.app  / ��   ;  C D C r   ' 3 E F E c   ' 1 G H G n   ' / I J I 4   , /�� K
�� 
cwor K m   - .����  J l  ' , L���� L I  ' ,�� M��
�� .sysoexecTEXT���     TEXT M m   ' ( N N � O O n s y s t e m _ p r o f i l e r   S P D i s p l a y s D a t a T y p e   |   g r e p   - w   R e s o l u t i o n��  ��  ��   H m   / 0��
�� 
nmbr F o      ���� 0 scr   D  P Q P l  4 4��������  ��  ��   Q  R S R l  4 4�� T U��   T | v if there's no open window ( i can't set position or get it to slide in without creating weird unselectable windows. )    U � V V �   i f   t h e r e ' s   n o   o p e n   w i n d o w   (   i   c a n ' t   s e t   p o s i t i o n   o r   g e t   i t   t o   s l i d e   i n   w i t h o u t   c r e a t i n g   w e i r d   u n s e l e c t a b l e   w i n d o w s .   ) S  W�� W Z   4 � X Y Z [ X l  4 7 \���� \ =  4 7 ] ^ ] o   4 5���� 0 z   ^ m   5 6����  ��  ��   Y k   : A _ _  ` a ` I  : ?�� b��
�� .miscactvnull��� ��� null b m   : ; c c�                                                                                  MOZB  alis    4  fry                        �_CH+    3Firefox.app                                                     a�Qm^        ����  	                Applications    �_œ      �Q��      3  fry:Applications:Firefox.app    F i r e f o x . a p p    f r y  Applications/Firefox.app  / ��  ��   a  d e d l  @ @�� f g��   f Z Ttell process "firefox-bin" to click menu item "Home" of menu "History" of menu bar 1    g � h h � t e l l   p r o c e s s   " f i r e f o x - b i n "   t o   c l i c k   m e n u   i t e m   " H o m e "   o f   m e n u   " H i s t o r y "   o f   m e n u   b a r   1 e  i j i l  @ @��������  ��  ��   j  k�� k l  @ @�� l m��   l  
 slide out    m � n n    s l i d e   o u t��   Z  o p o l  D L q���� q =  D L r s r n   D J t u t 1   H J��
�� 
pvis u 4   D H�� v
�� 
pcap v m   F G w w � x x  f i r e f o x - b i n s m   J K��
�� boovtrue��  ��   p  y�� y k   O � z z  { | { r   O R } ~ } m   O P����   ~ o      ���� 0 x   |   �  W   S } � � � k   \ x � �  � � � r   \ p � � � J   \ b � �  � � � o   \ ]���� 0 x   �  ��� � m   ] `���� ��   � n       � � � 1   k o��
�� 
posn � n   b k � � � 4   h k�� �
�� 
cwin � m   i j����  � 4   b h�� �
�� 
pcap � m   d g � � � � �  f i r e f o x - b i n �  ��� � r   q x � � � \   q v � � � o   q r���� 0 x   � m   r u���� @ � o      ���� 0 x  ��   � A   W [ � � � o   W X���� 0 x   � d   X Z � � o   X Y���� 0 scr   �  � � � l  ~ ~�� � ���   � V P bring the window back, but invisible, so clicking on the dock works as expected    � � � � �   b r i n g   t h e   w i n d o w   b a c k ,   b u t   i n v i s i b l e ,   s o   c l i c k i n g   o n   t h e   d o c k   w o r k s   a s   e x p e c t e d �  � � � r   ~ � � � � m   ~ ��
�� boovfals � n       � � � 1   � ���
�� 
pvis � 4    ��� �
�� 
pcap � m   � � � � � � �  f i r e f o x - b i n �  � � � r   � � � � � J   � � � �  � � � m   � �����   �  ��� � m   � ����� ��   � n       � � � 1   � ���
�� 
posn � n   � � � � � 4   � ��� �
�� 
cwin � m   � �����  � 4   � ��� �
�� 
pcap � m   � � � � � � �  f i r e f o x - b i n �  � � � l  � ���������  ��  ��   �  ��� � l  � ��� � ���   �   slide in                 � � � � ,   s l i d e   i n                          ��  ��   [ k   � � � �  � � � l  � ��� � ���   �  set x to -scr    � � � �  s e t   x   t o   - s c r �  � � � l  � ��� � ���   � Q Kset position of window 1 of application process "firefox-bin" to {-scr, 23}    � � � � � s e t   p o s i t i o n   o f   w i n d o w   1   o f   a p p l i c a t i o n   p r o c e s s   " f i r e f o x - b i n "   t o   { - s c r ,   2 3 } �  � � � l  � ��� � ���   � > 8set visible of application process "firefox-bin" to true    � � � � p s e t   v i s i b l e   o f   a p p l i c a t i o n   p r o c e s s   " f i r e f o x - b i n "   t o   t r u e �  � � � l  � ��� � ���   � $ activate application "Firefox"    � � � � < a c t i v a t e   a p p l i c a t i o n   " F i r e f o x " �  � � � l  � ��� � ���   �  repeat while x < 0    � � � � $ r e p e a t   w h i l e   x   <   0 �  � � � l  � ��� � ���   �  	set x to x + 64    � � � �   	 s e t   x   t o   x   +   6 4 �  � � � l  � ��� � ���   � O I	set position of window 1 of application process "firefox-bin" to {x, 23}    � � � � � 	 s e t   p o s i t i o n   o f   w i n d o w   1   o f   a p p l i c a t i o n   p r o c e s s   " f i r e f o x - b i n "   t o   { x ,   2 3 } �  � � � l  � ��� � ���   �  
end repeat    � � � �  e n d   r e p e a t �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � J   � � � �  � � � m   � �����   �  ��� � m   � ����� ��   � n       � � � 1   � ���
�� 
posn � n   � � � � � 4   � ��� �
�� 
cwin � m   � �����  � 4   � ��� �
�� 
pcap � m   � � � � � � �  f i r e f o x - b i n �  � � � r   � � � � � m   � ���
�� boovtrue � n       �  � 1   � ���
�� 
pvis  4   � ���
�� 
pcap m   � � �  f i r e f o x - b i n �  I  � �����
�� .miscactvnull��� ��� null m   � ��                                                                                  MOZB  alis    4  fry                        �_CH+    3Firefox.app                                                     a�Qm^        ����  	                Applications    �_œ      �Q��      3  fry:Applications:Firefox.app    F i r e f o x . a p p    f r y  Applications/Firefox.app  / ��  ��   �� l  � ���������  ��  ��  ��  ��  ��    m     		�                                                                                  sevs  alis    t  fry                        �_CH+    +System Events.app                                               +��7��        ����  	                CoreServices    �_œ      �8'7      +   �   �  1fry:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p    f r y  -System/Library/CoreServices/System Events.app   / ��  ��  ��    
��
 l     ��������  ��  ��  ��       ����   ��
�� .aevtoappnull  �   � **** ����~�}
�� .aevtoappnull  �   � **** k     �  �|�|  �  �~     	�{ 1�z 7�y�x�w�v N�u�t�s w�r�q�p ��o�n � � �
�{ 
pcap
�z .coredoexbool       obj 
�y .miscactvnull��� ��� null
�x 
cwin
�w 
nmbr�v 0 z  
�u .sysoexecTEXT���     TEXT
�t 
cwor�s 0 scr  
�r 
pvis�q 0 x  �p 
�o 
posn�n @�} �� �*��/j  �j OPY �� 	*�-�,E�UO�j 
�l/�&E�O�j  �j OPY �*��/�,e  UjE�O )h��'�a lv*�a /�k/a ,FO�a E�[OY��Of*�a /�,FOja lv*�a /�k/a ,FOPY )ja lv*�a /�k/a ,FOe*�a /�,FO�j OPUascr  ��ޭ