#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYZ�B�  ���1p ����������@   P��{��[{t��@�Ҟ��OQ�ڍ�ڃOS�ɦ���hh�COSMS@  )�=)��)�y�=F�d� =F���d  �55=L��O��z�P��d�  i�@4 4�D��i4�F#A�@h=M  h H��j�M�2	��Dx��d=OP4h54�M�<�]��E�Y���G���Y��P!"��1�%Ol$PR�A�5���y�
D�o��h��.�c���2p����|���w6�i-`e�q�^P%3�4C��x�0����Ի�;�([3�'��RQH�?S��r<-O�#����r�@T_qOkέ��mv�{+f�r��Zq��|�7��"|S
�n�z�c	\�Q���h�� #l��ˤ�HR�hH�Ź-�'��U��>�O7PQ��ʬ*���lw@��FFJ6��f|^�MNZm�_i�,�o/'���V�[Aa�MN>�R�
B�D�(����K�`R���XF�[���1A[`e�PꮾJ�|�m>�j-��{-�5�.�
dڙհ��a�e_|�2G��Ǔ�'tN�!,`C�8!���C�C~�d�ckTU�s�� �ߵ�'��$Kb۝M+�|����-JT$���pEJƩ�s�p�-p��&�I}ʹg�������^S���d�F���W��)R;`o1��׻a��;r�n�?�Ȯ�+?'k����A���*����av��ߗԀO�4 ��bFj�����̆fa[�[��=��uC�.o>ȘcOE��X}�16��c�SQ��,�VHHQa�_���vԨ��]hj1�F:� �!�C�_�ƈ���Tm��O.�)�Aج".���
厨�Iq��"O%_��&8�Af'4�d(��D�fL僳|Y>��e
0�x��s����;;�� �ʳ���쐅4���Y#��E8�8�\����Jt�I�ٚnR�#��%棋{�ƭ�5#��D�RS�Ì@
�4N�|T	f/D%e�����5��|`�&�W�^��4�7Fy��	�Y+�<,��w�;0l�-Zq���L?�"�@8���;f�HZ�R�:;�-K2GX�^��H�����W'?_�̷�L�>�k��k-օ ����⎘U?I`p}��i�Js&c��ex�^8����\*�&PQ��ad�}$m	�D$�׮�1���{q��1n<�Ye�H�T�+B��k��z��NI������-��P��5dQ#B�'U�J�Sc�iЙ�E�e�{�ƥ���ܸA�t�,K�T;$�@�P ��J��Ał
�5`������ĉ3�!��	��yk+��dY�g��l��p�ʗG��� �� }H 7��.�p� �2�