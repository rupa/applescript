FasdUAS 1.101.10   ��   ��    k             l     ��  ��      quake terminal     � 	 	    q u a k e   t e r m i n a l   
  
 l     ��  ��    N H to run, READ BELOW, and set as a trigger in quicksilver, or equivalent.     �   �   t o   r u n ,   R E A D   B E L O W ,   a n d   s e t   a s   a   t r i g g e r   i n   q u i c k s i l v e r ,   o r   e q u i v a l e n t .      l     ��������  ��  ��        l     ��  ��    M G in order to play well with Spaces we use our own copy of terminal.app:     �   �   i n   o r d e r   t o   p l a y   w e l l   w i t h   S p a c e s   w e   u s e   o u r   o w n   c o p y   o f   t e r m i n a l . a p p :      l     ��������  ��  ��        l     ��  ��    C = make a copy of Terminal.app in ~/Applications named qtrm.app     �   z   m a k e   a   c o p y   o f   T e r m i n a l . a p p   i n   ~ / A p p l i c a t i o n s   n a m e d   q t r m . a p p      l     ��   ��    + % right click -> show package contents      � ! ! J   r i g h t   c l i c k   - >   s h o w   p a c k a g e   c o n t e n t s   " # " l     �� $ %��   $   edit Info.plist    % � & &     e d i t   I n f o . p l i s t #  ' ( ' l     �� ) *��   ) = 7 change the CFBundleIdentifier string to something else    * � + + n   c h a n g e   t h e   C F B u n d l e I d e n t i f i e r   s t r i n g   t o   s o m e t h i n g   e l s e (  , - , l     �� . /��   .   e.g. io.ix.qtrm    / � 0 0     e . g .   i o . i x . q t r m -  1 2 1 l     �� 3 4��   3 J D now we have a separate app that we can set to appear in all Spaces.    4 � 5 5 �   n o w   w e   h a v e   a   s e p a r a t e   a p p   t h a t   w e   c a n   s e t   t o   a p p e a r   i n   a l l   S p a c e s . 2  6 7 6 l     �� 8 9��   8 H B However, any preferences set in Terminal.app will have to be set     9 � : : �   H o w e v e r ,   a n y   p r e f e r e n c e s   s e t   i n   T e r m i n a l . a p p   w i l l   h a v e   t o   b e   s e t   7  ; < ; l     �� = >��   =   again in the new copy.    > � ? ? .   a g a i n   i n   t h e   n e w   c o p y . <  @ A @ l     ��������  ��  ��   A  B C B l     �� D E��   D - ' After preferences are set you can add:    E � F F N   A f t e r   p r e f e r e n c e s   a r e   s e t   y o u   c a n   a d d : C  G H G l     �� I J��   I !      <key>LSUIElement</key>    J � K K 6           < k e y > L S U I E l e m e n t < / k e y > H  L M L l     �� N O��   N       <string>1</string>    O � P P .           < s t r i n g > 1 < / s t r i n g > M  Q R Q l     �� S T��   S J D after <dict> in Info.plist. This will hide the icon from the dock,     T � U U �   a f t e r   < d i c t >   i n   I n f o . p l i s t .   T h i s   w i l l   h i d e   t h e   i c o n   f r o m   t h e   d o c k ,   R  V W V l     �� X Y��   X > 8 and prevent it from taking focus from the previous app,    Y � Z Z p   a n d   p r e v e n t   i t   f r o m   t a k i n g   f o c u s   f r o m   t h e   p r e v i o u s   a p p , W  [ \ [ l     �� ] ^��   ] \ V but it will also disable the menu bar, and keep you from editing Preferences, etc ...    ^ � _ _ �   b u t   i t   w i l l   a l s o   d i s a b l e   t h e   m e n u   b a r ,   a n d   k e e p   y o u   f r o m   e d i t i n g   P r e f e r e n c e s ,   e t c   . . . \  ` a ` l     ��������  ��  ��   a  b c b l     �� d e��   d   quake term width    e � f f "   q u a k e   t e r m   w i d t h c  g h g l     i���� i r      j k j m     ����  k o      ���� 0 w  ��  ��   h  l m l l     �� n o��   n   quake term height.    o � p p &   q u a k e   t e r m   h e i g h t . m  q r q l    s���� s r     t u t m    ����5 u o      ���� 0 h  ��  ��   r  v w v l     �� x y��   x 6 0 quake term bounds ( the 22 is for the menubar )    y � z z `   q u a k e   t e r m   b o u n d s   (   t h e   2 2   i s   f o r   t h e   m e n u b a r   ) w  { | { l    }���� } r     ~  ~ J     � �  � � � m    	����   �  � � � m   	 
����  �  � � � o   
 ���� 0 w   �  ��� � o    ���� 0 h  ��    o      ���� 0 rect  ��  ��   |  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � b \ Unfortunately, this doesn't seem to work right if the other copy of terminal.app is running    � � � � �   U n f o r t u n a t e l y ,   t h i s   d o e s n ' t   s e e m   t o   w o r k   r i g h t   i f   t h e   o t h e r   c o p y   o f   t e r m i n a l . a p p   i s   r u n n i n g �  � � � l     �� � ���   � N H seems like either application procces will make the other also be true     � � � � �   s e e m s   l i k e   e i t h e r   a p p l i c a t i o n   p r o c c e s   w i l l   m a k e   t h e   o t h e r   a l s o   b e   t r u e   �  � � � l   ! ����� � O   ! � � � r      � � � l    ����� � H     � � l    ����� � I   �� ���
�� .coredoexbool       obj  � 4    �� �
�� 
pcap � m     � � � � �  q t r m��  ��  ��  ��  ��   � o      ���� 0 firstrun   � m     � ��                                                                                  sevs  alis    t  fry                        �_CH+    +System Events.app                                               +��7��        ����  	                CoreServices    �_œ      �8'7      +   �   �  1fry:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p    f r y  -System/Library/CoreServices/System Events.app   / ��  ��  ��   �  � � � l     ��������  ��  ��   �  ��� � l  " � ����� � O   " � � � � k   & � � �  � � � r   & / � � � I  & -�� ���
�� .corecnte****       **** � n   & ) � � � 2   ' )��
�� 
cwin � m   & ' � ��                                                                                      @ alis    L  fry                        �_CH+   
 �qtrm.app                                                        6�w�        ����  	                Applications    �_œ      �wG�     
 � ��  ��  $fry:Users:rupa:Applications:qtrm.app    q t r m . a p p    f r y   Users/rupa/Applications/qtrm.app  /    ��  ��   � o      ���� 0 c   �  � � � r   0 5 � � � m   0 1��
�� boovfals � o      ���� 	0 found   �  � � � Y   6 � ��� � ��� � Z   @ � � ����� � =  @ J � � � n   @ H � � � 1   D H��
�� 
pbnd � 4   @ D�� �
�� 
cwin � o   B C���� 0 y   � o   H I���� 0 rect   � k   M ~ � �  � � � Z   M v � ��� � � n   M V � � � 1   Q U��
�� 
pvis � 4   M Q�� �
�� 
cwin � o   O P���� 0 y   � r   Y c � � � m   Y Z��
�� boovfals � n       � � � 1   ^ b��
�� 
pvis � 4   Z ^�� �
�� 
cwin � o   \ ]���� 0 y  ��   � k   f v � �  � � � r   f p � � � m   f g��
�� boovtrue � n       � � � 1   k o��
�� 
pvis � 4   g k�� �
�� 
cwin � o   i j���� 0 y   �  ��� � I  q v������
�� .miscactvnull��� ��� null��  ��  ��   �  � � � r   w | � � � m   w x��
�� boovtrue � o      ���� 	0 found   �  ��� �  S   } ~��  ��  ��  �� 0 y   � m   9 :����  � o   : ;���� 0 c  ��   �  ��� � Z   � � � ����� � H   � � � � o   � ����� 	0 found   � k   � � � �  � � � Z   � � � ����� � G   � � � � � H   � � � � o   � ����� 0 firstrun   � =   � � � � � o   � ����� 0 c   � m   � �����   � I  � �������
�� .coredoscnull��� ��� ctxt��  ��  ��  ��   �  � � � r   � � � � � n   � � � � � 4  � ��� �
�� 
cwin � m   � �����  � m   � � � ��                                                                                      @ alis    L  fry                        �_CH+   
 �qtrm.app                                                        6�w�        ����  	                Applications    �_œ      �wG�     
 � ��  ��  $fry:Users:rupa:Applications:qtrm.app    q t r m . a p p    f r y   Users/rupa/Applications/qtrm.app  /    ��   � o      ���� 0 x   �  � � � r   � � � � � o   � ����� 0 rect   � n       � � � 1   � ���
�� 
pbnd � o   � ����� 0 x   �  ��� � I  � �������
�� .miscactvnull��� ��� null��  ��  ��  ��  ��  ��   � m   " # � ��                                                                                      @ alis    L  fry                        �_CH+   
 �qtrm.app                                                        6�w�        ����  	                Applications    �_œ      �wG�     
 � ��  ��  $fry:Users:rupa:Applications:qtrm.app    q t r m . a p p    f r y   Users/rupa/Applications/qtrm.app  /    ��  ��  ��  ��       �� � ���   � �
� .aevtoappnull  �   � **** � �~ ��}�| � �{
�~ .aevtoappnull  �   � **** � k     �  g  q  {  �  ��z�z  �}  �|   � �y�y 0 y    �x�w�v�u�t�s�r ��q ��p�o ��n�m�l�k�j�i�h�g�f�e�x �w 0 w  �v5�u 0 h  �t �s �r 0 rect  
�q 
pcap
�p .coredoexbool       obj �o 0 firstrun  
�n 
cwin
�m .corecnte****       ****�l 0 c  �k 	0 found  
�j 
pbnd
�i 
pvis
�h .miscactvnull��� ��� null
�g 
bool
�f .coredoscnull��� ��� ctxt�e 0 x  �{ ��E�O�E�Oj����vE�O� *��/j 
E�UO� ���-j E�OfE` O Pk�kh  *��/a ,�  6*��/a ,E f*��/a ,FY e*��/a ,FO*j OeE` OY h[OY��O_  6�
 	�j a & 
*j Y hO��k/E` O�_ a ,FO*j Y hU ascr  ��ޭ