FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     �� 	 
��   	 7 1 Purpose:	process junk e-mail more satisfactorily    
 �   b   P u r p o s e : 	 p r o c e s s   j u n k   e - m a i l   m o r e   s a t i s f a c t o r i l y      l     ��  ��      Author:	Craig Buchanan     �   .   A u t h o r : 	 C r a i g   B u c h a n a n      l     ��  ��      Version:	0.1.0     �      V e r s i o n : 	 0 . 1 . 0      l     ��  ��      Revisions:     �      R e v i s i o n s :      l     ��  ��    &  	2014/06/03	inital release	0.1.0     �   @ 	 2 0 1 4 / 0 6 / 0 3 	 i n i t a l   r e l e a s e 	 0 . 1 . 0     !   l     �� " #��   "   Todo:    # � $ $    T o d o : !  % & % l     �� ' (��   ' Y S	fix error related to "system events" when script is run from Outlook's script menu    ( � ) ) � 	 f i x   e r r o r   r e l a t e d   t o   " s y s t e m   e v e n t s "   w h e n   s c r i p t   i s   r u n   f r o m   O u t l o o k ' s   s c r i p t   m e n u &  * + * l     �� , -��   , + %	add domains to blocked-sender's list    - � . . J 	 a d d   d o m a i n s   t o   b l o c k e d - s e n d e r ' s   l i s t +  / 0 / l     �� 1 2��   1 , &	assign keyboard accelerator to script    2 � 3 3 L 	 a s s i g n   k e y b o a r d   a c c e l e r a t o r   t o   s c r i p t 0  4 5 4 l     ��������  ��  ��   5  6 7 6 l    � 8���� 8 O     � 9 : 9 k    � ; ;  < = < l   ��������  ��  ��   =  > ? > Q    0 @ A B @ k     C C  D E D r     F G F 1    
��
�� 
CMgs G o      ���� 0 themessages theMessages E  H I H r     J K J I   �� L��
�� .corecnte****       **** L o    ���� 0 themessages theMessages��   K o      ���� 0 thecount theCount I  M�� M l   ��������  ��  ��  ��   A R      ������
�� .ascrerr ****      � ****��  ��   B k    0 N N  O P O I   +�� Q R
�� .sysodlogaskr        TEXT Q m     S S � T T Z S e l e c t   a   m e s s a g e s   b e f o r e   r u n n i n g   t h i s   s c r i p t . R �� U V
�� 
btns U J     # W W  X�� X m     ! Y Y � Z Z  Q u i t   S c r i p t��   V �� [ \
�� 
dflt [ m   $ %����  \ �� ]��
�� 
disp ] m   & '��
�� stic    ��   P  ^ _ ^ L   , .����   _  `�� ` l  / /��������  ��  ��  ��   ?  a b a l  1 1��������  ��  ��   b  c d c l  1 1�� e f��   e    TODO: get blocked senders    f � g g 4   T O D O :   g e t   b l o c k e d   s e n d e r s d  h i h l  1 1�� j k��   j : 4 set theBlockedSendersList to my getBlockedSenders()    k � l l h   s e t   t h e B l o c k e d S e n d e r s L i s t   t o   m y   g e t B l o c k e d S e n d e r s ( ) i  m n m l  1 1��������  ��  ��   n  o p o X   1 � q�� r q k   C � s s  t u t l  C C��������  ��  ��   u  v w v r   C L x y x n   C H z { z 1   D H��
�� 
sndr { o   C D���� 0 
themessage 
theMessage y o      ���� 0 	thesender 	theSender w  | } | r   M X ~  ~ n   M T � � � 1   P T��
�� 
radd � o   M P���� 0 	thesender 	theSender  o      ���� 0 
theaddress 
theAddress }  � � � l  Y Y��������  ��  ��   �  � � � l  Y Y�� � ���   � #  block sender's email address    � � � � :   b l o c k   s e n d e r ' s   e m a i l   a d d r e s s �  � � � n  Y ^ � � � I   Z ^�������� 0 blocksender blockSender��  ��   �  f   Y Z �  � � � l  _ _��������  ��  ��   �  � � � l  _ _�� � ���   �   TODO: add to list    � � � � $   T O D O :   a d d   t o   l i s t �  � � � l  _ _�� � ���   �   block sender's domain    � � � � ,   b l o c k   s e n d e r ' s   d o m a i n �  � � � l  _ _�� � ���   � r lif theBlockedSendersList does not contain theAddress then set theAddress to the end of theBlockedSendersList    � � � � � i f   t h e B l o c k e d S e n d e r s L i s t   d o e s   n o t   c o n t a i n   t h e A d d r e s s   t h e n   s e t   t h e A d d r e s s   t o   t h e   e n d   o f   t h e B l o c k e d S e n d e r s L i s t �  � � � l  _ _��������  ��  ��   �  � � � n  _ h � � � I   ` h�� �����  0 forwardmessage forwardMessage �  � � � o   ` a���� 0 
themessage 
theMessage �  ��� � m   a d � � � � �   s p a m @ s h e r w e b . c o m��  ��   �  f   _ ` �  � � � l  i i��������  ��  ��   �  � � � l  i i�� � ���   � S M Mark as Junk (??J); move message to Junk E-mail folder; categorize as 'Junk'    � � � � �   M a r k   a s   J u n k   (!�# J ) ;   m o v e   m e s s a g e   t o   J u n k   E - m a i l   f o l d e r ;   c a t e g o r i z e   a s   ' J u n k ' �  � � � l  i i�� � ���   � ` Z Is the workflow valuable?  Does it do anything other than move the message and flag it?		    � � � � �   I s   t h e   w o r k f l o w   v a l u a b l e ?     D o e s   i t   d o   a n y t h i n g   o t h e r   t h a n   m o v e   t h e   m e s s a g e   a n d   f l a g   i t ? 	 	 �  � � � O  i � � � � I  o ��� � �
�� .prcskcodnull���     **** � m   o r���� & � �� ���
�� 
faal � J   u } � �  � � � m   u x��
�� eMdsKsft �  ��� � m   x {��
�� eMdsKcmd��  ��   � m   i l � ��                                                                                  sevs  alis    �  Macintosh HD               ���4H+   ���System Events.app                                               �V��A|�        ����  	                CoreServices    ���      �A�9     ��� ��� ���  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   delete the message    � � � � &   d e l e t e   t h e   m e s s a g e �  � � � l  � ��� � ���   � $  permanently delete theMessage    � � � � <   p e r m a n e n t l y   d e l e t e   t h e M e s s a g e �  ��� � l  � ���������  ��  ��  ��  �� 0 
themessage 
theMessage r o   4 5���� 0 themessages theMessages p  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � !  TODO: save blocked senders    � � � � 6   T O D O :   s a v e   b l o c k e d   s e n d e r s �  � � � l  � ��� � ���   � 1 +my setBlockedSenders(theBlockedSendersList)    � � � � V m y   s e t B l o c k e d S e n d e r s ( t h e B l o c k e d S e n d e r s L i s t ) �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   process spam folder    � � � � (   p r o c e s s   s p a m   f o l d e r �  � � � r   � � � � � 1   � ���
�� 
pJnk � o      ���� &0 thejunkmailfolder theJunkMailFolder �  � � � r   � � � � � n  � � � � � 2   � ���
�� 
msg  � o   � ����� &0 thejunkmailfolder theJunkMailFolder � o      ���� 0 themessages theMessages �  � � � l  � ���������  ��  ��   �  � � � X   � � ��� � � k   � � � �  � � � l  � ���������  ��  ��   �  � � � l  � �� � ��   �   delete the message    � � � � &   d e l e t e   t h e   m e s s a g e �  � � � I  � ��~ ��}
�~ .MSOEpdelnull���     msg  � o   � ��|�| 0 
themessage 
theMessage�}   �  ��{ � l  � ��z�y�x�z  �y  �x  �{  �� 0 
themessage 
theMessage � o   � ��w�w 0 themessages theMessages �  � � � l  � ��v�u�t�v  �u  �t   �    I  � ��s
�s .sysodlogaskr        TEXT b   � � l  � ��r�q c   � � o   � ��p�p 0 thecount theCount m   � ��o
�o 
ctxt�r  �q   m   � �		 �

 &   m e s s a g e s   p r o c e s s e d �n
�n 
appr m   � � �  J u n k   E - m a i l s �m
�m 
btns J   � � �l m   � � �  O K�l   �k�j
�k 
dflt m   � ��i�i �j   �h l  � ��g�f�e�g  �f  �e  �h   : m                                                                                       OPIM  alis    �  Macintosh HD               ���4H+   
hMicrosoft Outlook.app                                           
s�Țs�        ����  	                Microsoft Office 2011     ���      Ț�F     
h ���  GMacintosh HD:Applications: Microsoft Office 2011: Microsoft Outlook.app   ,  M i c r o s o f t   O u t l o o k . a p p    M a c i n t o s h   H D  8Applications/Microsoft Office 2011/Microsoft Outlook.app  / ��  ��  ��   7  l     �d�c�b�d  �c  �b    l     �a�`�_�a  �`  �_    l     �^�^     Purpose:	forward message    �   2   P u r p o s e : 	 f o r w a r d   m e s s a g e !"! l     �]#$�]  #   Parameters:   $ �%%    P a r a m e t e r s :" &'& l     �\()�\  ( + %	theMessage - message to be forwarded   ) �** J 	 t h e M e s s a g e   -   m e s s a g e   t o   b e   f o r w a r d e d' +,+ l     �[-.�[  - - '	theRecipient - the message's recipient   . �// N 	 t h e R e c i p i e n t   -   t h e   m e s s a g e ' s   r e c i p i e n t, 010 l     �Z23�Z  2   Returns:	nil   3 �44    R e t u r n s : 	 n i l1 565 l     �Y�X�W�Y  �X  �W  6 787 i     9:9 I      �V;�U�V  0 forwardmessage forwardMessage; <=< o      �T�T 0 
themessage 
theMessage= >�S> o      �R�R 0 therecipient theRecipient�S  �U  : k     ?? @A@ l     �Q�P�O�Q  �P  �O  A BCB O     DED k    FF GHG l   �N�M�L�N  �M  �L  H IJI r    KLK I   �KMN
�K .OEMamFwdnull���     cEvtM o    �J�J 0 
themessage 
theMessageN �IOP
�I 
inshO o    �H�H 0 therecipient theRecipientP �GQ�F
�G 
ropwQ m    	�E
�E boovfals�F  L o      �D�D 0 
theforward 
theForwardJ RSR I   �CT�B
�C .mailsendnull���     msg T o    �A�A 0 
theforward 
theForward�B  S U�@U l   �?�>�=�?  �>  �=  �@  E m     VV                                                                                  OPIM  alis    �  Macintosh HD               ���4H+   
hMicrosoft Outlook.app                                           
s�Țs�        ����  	                Microsoft Office 2011     ���      Ț�F     
h ���  GMacintosh HD:Applications: Microsoft Office 2011: Microsoft Outlook.app   ,  M i c r o s o f t   O u t l o o k . a p p    M a c i n t o s h   H D  8Applications/Microsoft Office 2011/Microsoft Outlook.app  / ��  C W�<W l   �;�:�9�;  �:  �9  �<  8 XYX l     �8�7�6�8  �7  �6  Y Z[Z l     �5�4�3�5  �4  �3  [ \]\ l     �2^_�2  ^ q k Purpose:	Add the sender's address to Outlook's Blocked Senders list (Message > Junk E-mail > Block Sender)   _ �`` �   P u r p o s e : 	 A d d   t h e   s e n d e r ' s   a d d r e s s   t o   O u t l o o k ' s   B l o c k e d   S e n d e r s   l i s t   ( M e s s a g e   >   J u n k   E - m a i l   >   B l o c k   S e n d e r )] aba l     �1cd�1  c   Parameters:	None   d �ee "   P a r a m e t e r s : 	 N o n eb fgf l     �0hi�0  h   Returns:	nil   i �jj    R e t u r n s : 	 n i lg klk l     �/�.�-�/  �.  �-  l mnm i    opo I      �,�+�*�, 0 blocksender blockSender�+  �*  p k     ,qq rsr l     �)�(�'�)  �(  �'  s tut O    
vwv I   	�&�%�$
�& .miscactvnull��� ��� null�%  �$  w m     xx                                                                                  OPIM  alis    �  Macintosh HD               ���4H+   
hMicrosoft Outlook.app                                           
s�Țs�        ����  	                Microsoft Office 2011     ���      Ț�F     
h ���  GMacintosh HD:Applications: Microsoft Office 2011: Microsoft Outlook.app   ,  M i c r o s o f t   O u t l o o k . a p p    M a c i n t o s h   H D  8Applications/Microsoft Office 2011/Microsoft Outlook.app  / ��  u yzy O    *{|{ I   )�#}�"
�# .prcsclicnull��� ��� uiel} n    %~~ 4   " %�!�
�! 
menI� m   # $�� ���  B l o c k   S e n d e r n    "��� 4    "� �
�  
menE� m     !�� ���  J u n k   M a i l� n    ��� 4    ��
� 
menI� m    �� ���  J u n k   M a i l� n    ��� 4    ��
� 
menE� m    �� ���  M e s s a g e� n   ��� 4    ��
� 
mbri� m    �� ���  M e s s a g e� n    ��� 4    ��
� 
mbar� m    �� � 4    ��
� 
prcs� m    �� ��� " M i c r o s o f t   O u t l o o k�"  | m    ���                                                                                  sevs  alis    �  Macintosh HD               ���4H+   ���System Events.app                                               �V��A|�        ����  	                CoreServices    ���      �A�9     ��� ��� ���  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  z ��� l  + +����  �  �  �  n ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  � m g Purpose:	Add the sender's domain to Outlook's Blocked Senders list (Tools > Junk E-mail Protection...)   � ��� �   P u r p o s e : 	 A d d   t h e   s e n d e r ' s   d o m a i n   t o   O u t l o o k ' s   B l o c k e d   S e n d e r s   l i s t   ( T o o l s   >   J u n k   E - m a i l   P r o t e c t i o n . . . )� ��� l     ����  �   Parameters:	   � ���    P a r a m e t e r s : 	� ��� l     ����  � + %	theMessage - message to be processed   � ��� J 	 t h e M e s s a g e   -   m e s s a g e   t o   b e   p r o c e s s e d� ��� l     ����  �   Returns:	list   � ���    R e t u r n s : 	 l i s t� ��� l     ��
�	�  �
  �	  � ��� i    ��� I      ���� &0 getblockedsenders getBlockedSenders�  �  � k     �� ��� l     ����  �  �  � ��� l     ����  � 6 0 TODO: implement code to get block-senders' list   � ��� `   T O D O :   i m p l e m e n t   c o d e   t o   g e t   b l o c k - s e n d e r s '   l i s t� ��� l     ����  �   get blocked-senders list   � ��� 2   g e t   b l o c k e d - s e n d e r s   l i s t� ��� l     � ���   � ' !	tell application "System Events"   � ��� B 	 t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "� ��� l     ������  � M G		set theList to value of text field 1 in window 1 of process "Outlook"   � ��� � 	 	 s e t   t h e L i s t   t o   v a l u e   o f   t e x t   f i e l d   1   i n   w i n d o w   1   o f   p r o c e s s   " O u t l o o k "� ��� l     ������  �  		end tell   � ���  	 e n d   t e l l� ��� l     ��������  ��  ��  � ��� r     ��� m     �� ���� i a m s i n c . n e t ,   f i e l d s l e f t . b i z ,   u a w e i - i t l e a d e r s f o r u m . c o m ,   t r u t h a b o u t s e c r e t s . c o m ,   e c y c l i n g s o l u t i o n s . c o m ,   s a f e u p a y . p w ,   e g g e r m . u s ,   b l o g i c n y c . c o m ,   p e r f e c t s t o r m e u r o p e . c o m ,   c a h u a g e o . m e ,   m a s t e r c l a s s i n s t i t u t e . n l ,   a o r d e r s . m e ,   g i v e r a l . c o m ,   m i t s y m p o s i u m . n l ,   r o u g h s m o o t h� o      ���� 0 thelist theList� ��� l   ��������  ��  ��  � ��� L    �� I    
������� 	0 split  � ���� o    ���� 0 thelist theList��  ��  � ���� l   ��������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � m g Purpose:	Add the sender's domain to Outlook's Blocked Senders list (Tools > Junk E-mail Protection...)   � ��� �   P u r p o s e : 	 A d d   t h e   s e n d e r ' s   d o m a i n   t o   O u t l o o k ' s   B l o c k e d   S e n d e r s   l i s t   ( T o o l s   >   J u n k   E - m a i l   P r o t e c t i o n . . . )� ��� l     ������  �   Parameters:	   � ���    P a r a m e t e r s : 	� ��� l     ������  � + %	theMessage - message to be processed   � ��� J 	 t h e M e s s a g e   -   m e s s a g e   t o   b e   p r o c e s s e d� ��� l     ������  �   Returns:	nil   � �      R e t u r n s : 	 n i l�  l     ��������  ��  ��    i    �� I      ������ &0 setblockedsenders setBlockedSenders �� o      ���� 0 thelist theList��  ��  ��   	 l     ��������  ��  ��  	 

 l     ��������  ��  ��    l     ����   1 + Purpose:	extract domain from email address    � V   P u r p o s e : 	 e x t r a c t   d o m a i n   f r o m   e m a i l   a d d r e s s  l     ����     Parameters:	    �    P a r a m e t e r s : 	  l     ����   1 +	theAddress - email address to be processed    � V 	 t h e A d d r e s s   -   e m a i l   a d d r e s s   t o   b e   p r o c e s s e d  l     ����     Returns:	string    �     R e t u r n s : 	 s t r i n g  !  l     ��������  ��  ��  ! "#" i    $%$ I      ��&���� 0 	getdomain 	getDomain& '��' o      ���� 0 
theaddress 
theAddress��  ��  % k     (( )*) l     ��������  ��  ��  * +,+ l     ��-.��  -   extract domain   . �//    e x t r a c t   d o m a i n, 010 r     232 J     44 5��5 m     66 �77  @��  3 1    ��
�� 
txdl1 898 L    :: n    ;<; 4   	 ��=
�� 
citm= m   
 ���� < o    	���� 0 
theaddress 
theAddress9 >��> l   ��������  ��  ��  ��  # ?@? l     ��������  ��  ��  @ ABA l     ��������  ��  ��  B CDC l     ��EF��  E 4 . Purpose:	convert comma-delimited text to list   F �GG \   P u r p o s e : 	 c o n v e r t   c o m m a - d e l i m i t e d   t e x t   t o   l i s tD HIH l     ��JK��  J   Parameters:	   K �LL    P a r a m e t e r s : 	I MNM l     ��OP��  O % 	theText - comma-delimited text   P �QQ > 	 t h e T e x t   -   c o m m a - d e l i m i t e d   t e x tN RSR l     ��TU��  T   Returns:	list   U �VV    R e t u r n s : 	 l i s tS WXW l     ��������  ��  ��  X YZY i    [\[ I      ��]���� 	0 split  ] ^��^ o      ���� 0 thetext theText��  ��  \ k     *__ `a` l     ��������  ��  ��  a bcb r     ded J     ff ghg n    iji 1    ��
�� 
txdlj 1     ��
�� 
ascrh k��k J    ll m��m m    nn �oo  ,��  ��  e J      pp qrq o      ���� 0 mytid myTIDr s��s n     tut 1    ��
�� 
txdlu 1    ��
�� 
ascr��  c vwv l   ��������  ��  ��  w xyx r    z{z n    |}| 2   ��
�� 
citm} o    ���� 0 thetext theText{ o      ���� 0 thelist theListy ~~ l     ��������  ��  ��   ��� l    %���� r     %��� o     !���� 0 mytid myTID� n     ��� 1   " $��
�� 
txdl� 1   ! "��
�� 
ascr� P J It's considered good practice to return the TID's to their original state   � ��� �   I t ' s   c o n s i d e r e d   g o o d   p r a c t i c e   t o   r e t u r n   t h e   T I D ' s   t o   t h e i r   o r i g i n a l   s t a t e� ��� l  & &��������  ��  ��  � ��� L   & (�� o   & '���� 0 thelist theList� ���� l  ) )��������  ��  ��  ��  Z ���� l     ��������  ��  ��  ��       	������������  � ����������������  0 forwardmessage forwardMessage�� 0 blocksender blockSender�� &0 getblockedsenders getBlockedSenders�� &0 setblockedsenders setBlockedSenders�� 0 	getdomain 	getDomain�� 	0 split  
�� .aevtoappnull  �   � ****� ��:���������  0 forwardmessage forwardMessage�� �~��~ �  �}�|�} 0 
themessage 
theMessage�| 0 therecipient theRecipient��  � �{�z�y�{ 0 
themessage 
theMessage�z 0 therecipient theRecipient�y 0 
theforward 
theForward� V�x�w�v�u�t
�x 
insh
�w 
ropw�v 
�u .OEMamFwdnull���     cEvt
�t .mailsendnull���     msg � � ���f� E�O�j OPUOP� �sp�r�q���p�s 0 blocksender blockSender�r  �q  �  � x�o��n��m�l��k��j����i
�o .miscactvnull��� ��� null
�n 
prcs
�m 
mbar
�l 
mbri
�k 
menE
�j 
menI
�i .prcsclicnull��� ��� uiel�p -� *j UO� *��/�k/��/��/��/��/��/j UOP� �h��g�f���e�h &0 getblockedsenders getBlockedSenders�g  �f  � �d�d 0 thelist theList� ��c�c 	0 split  �e �E�O*�k+ OP� �b�a�`�_���^�b &0 setblockedsenders setBlockedSenders�a  �` �]��] �  �\�\ 0 thelist theList�_  � �[�[ 0 thelist theList�  �^ h� �Z%�Y�X���W�Z 0 	getdomain 	getDomain�Y �V��V �  �U�U 0 
theaddress 
theAddress�X  � �T�T 0 
theaddress 
theAddress� 6�S�R
�S 
txdl
�R 
citm�W �kv*�,FO��l/EOP� �Q\�P�O���N�Q 	0 split  �P �M��M �  �L�L 0 thetext theText�O  � �K�J�I�K 0 thetext theText�J 0 mytid myTID�I 0 thelist theList� �H�Gn�F�E
�H 
ascr
�G 
txdl
�F 
cobj
�E 
citm�N +��,�kvlvE[�k/E�Z[�l/��,FZO��-E�O���,FO�OP� �D��C�B���A
�D .aevtoappnull  �   � ****� k     ���  6�@�@  �C  �B  � �?�? 0 
themessage 
theMessage� '�>�=�<�;�:�9 S�8 Y�7�6�5�4�3�2�1�0�/�.�-�, ��+ ��*�)�(�'�&�%�$�#�"�!	� 
�> 
CMgs�= 0 themessages theMessages
�< .corecnte****       ****�; 0 thecount theCount�:  �9  
�8 
btns
�7 
dflt
�6 
disp
�5 stic    �4 
�3 .sysodlogaskr        TEXT
�2 
kocl
�1 
cobj
�0 
sndr�/ 0 	thesender 	theSender
�. 
radd�- 0 
theaddress 
theAddress�, 0 blocksender blockSender�+  0 forwardmessage forwardMessage�* &
�) 
faal
�( eMdsKsft
�' eMdsKcmd
�& .prcskcodnull���     ****
�% 
pJnk�$ &0 thejunkmailfolder theJunkMailFolder
�# 
msg 
�" .MSOEpdelnull���     msg 
�! 
ctxt
�  
appr�A �� � *�,E�O�j E�OPW X  ���kv�k��� OhOPO W�[�a l kh  �a ,E` O_ a ,E` O)j+ O)�a l+ Oa  a a a a lvl UOP[OY��O*a ,E` O_ a  -E�O �[�a l kh  �j !OP[OY��O�a "&a #%a $a %�a &kv�k� OPUascr  ��ޭ