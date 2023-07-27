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
BZh91AY&SY�k�i  ��1p ����������@   P��{ܕs0���HИ��b=OQ��hhѦ�4����4� 4�Pʞ�Bdړ��4b @4 @4 MM�OQ1�mF�d�P�a�`LCF��M�@  �      � $�M&M1'�hɦ!����=L�F�40�h@;0�("i�N����6�$/aV$�����đ'G�$PҀ�����̈́�2k��q�%X���w��:��'�p�_5>����I`\����j�-���[����x���A�T>i�R p�����v�4D��P2��姱&9N��L�HH|˂���V�.�3"i!��5�&�3�%-,�C׍�a��ϑ�4�Zۉ���b��Q1�`|M&f��e��/̓��f�ڷ�+i^�r���	]���e;��m��
�$cb*�l�Q��o].��
{Μ�Xg=��m�G�쭀���h(��ĕS4���-��I�p��
,#��]���#��[�0.9yp��n��z�E>�tU���V��$�Q�R� �9Vl�BJ��z��6���j�9,_S��;0�8:V�f�}޸M�:�1��2 ���a`A��O�����7�R>��Q^���Q���i�C�ye:��,d!�9T_�4w/�s{=t�J�Y�
���vx38Lծ�#y(�m��8w�(D/�;+i)d��G�/�4���R.�^���6�J� ە��Sd[E S!���bff�՞c�G�X.�zg�Ӵ&��}�VOζ"��4b�
)1ߒ��c��|�b��mNCz�� �9�6غ�,ڬ�+>�0i$=Z.{�YY����Դ4�{�xQ�Aب"/��l�eS��� t�HA8�":��,u�0��$�d�^� m��F��
��J���A*�χ��L�BV3
̐�rP3�&�m]\3a��m�hӴ�p-��*�R�L��|����y����mlk�^�rb�L���;.1 )P2h��w��;�^�N������o���*�W���Q���;�iՎ�{+#�'q�Ι���AqJU�R���}L�8Ր�:v�ʐ���p����-k2ge�M�[�<�Ѥ16�]�c�n��p�A��p4,�n4(B�N��8�6�

ó��	���U���M@�$Wr04�`���%ݶ�Wi�Q�iX4B`�|�b���q��x��,�=u��5ŕ����B�=Mz-�hclꑩ�,ɸ�E8�H�G��N�Q\1���3)J(}��U2��8�`�R���Px1M��^��E B�hu���e#�%�M��"�̙��څ�y�^
����~+z�N���Isv�� �܀u��H�
m{m 