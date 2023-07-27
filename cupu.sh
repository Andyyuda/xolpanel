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
BZh91AY&SY� ��1p w����������@   P����e�QJ ��S��<������&���A����A��=@��驵25�S��ѣ@4dF��2
5O&� h         4�@##S��'�i� �i�d  z�  I�h42OD�2h�0F�&&�42���7¨��#�6�^ެ4g��(�y� �D��#@�g��/Q��:Li
�k��q�%W����pu��'�9?'�G����?��ԕ�e��J�v�a8W9���3��'4���f���e�9�d������r��9���*~�,��
�1�t�;A��	X�/Ar �R�,�GGB�2��Źm�Y�)(8W���e���[����\b�΢ a5��3Vò����m���+8z"��)�F���	`�yz�d��nپP@�2\̀*���b�s+0���`7�A���(�r��$L�SC�К��a�:\b���h�� ����5]\�6u4�~��4!xÉ�t�ܗ���ł~�Z�*Xxg������1����I��1�yэK'��f~?7��/��Uy8AA+0݂} (������ɫ�U�T��xD�&P!�b�@�U�HeKW�<{ϕ�Ma���T86x :	������V��Sf�J>�E��p����B�0����2��8�aIB�H<q�dt:�]���%�Ց�5��1���?!A�9�_x�C��vwa`yc�x�+ԣ�!��(����!!�j�p�P{�(��su,ݔ!V�$�i��B�[~�ŷ
&bÒ�r�)
,:*�S]QF�L��el���Q�"j�c $C3a_�H�"R&EH�U--K���1�b���0�-�5�S�q"ʥ6E3��b���U67�j`�l�����.�.K�N�ױ�(˩��S�������=�3!���id��p�d�*E<�H&�OTL�S
���:�Ԅ���f�&���dmlkۮ�kZ;�����z9�b&�d�z�tW0ߧ9�����m?{\����'�$ň*�`V�X��C{t"�H�$�V2�"�ES0�����ܢ+\@*�=�("CVBL����H]�ji�H�b�B�,�#=Ʊ6il�'�tm�W>�'�0��-��^���ҳ�,e�Сn|99�����8>�fP��1am���(L�"�������OXH�E��v���,�-+�R�C媫��?>#��.�Ř4�\01I���)���"�X�Q5��&Ҫ���O'iLiS�1Χ���� ˭��fR�P���U2߮�LS�F�[r��k)&YN�/�
�Z���Tto�����_��?������a�3�!�����^��dm��{wZzlp��K����� �� zP l_���)�/�}h