::{create:2011��6��27��23ʱ41��23��}{last modify:2012��1��1��11ʱ46��03����
::version:3.0
::���������ļ���������WorkListBackward(C).xlsx�����ļ��������С�
::����GTD����ĵ�Ŀǰ��git���а汾���ƣ����Բ��ٱ��� gtd�ֲ� ���̡�

::ע��༭��bat�ļ�ʱһ��Ҫ��ansi��ʽ���롣����������·��ʱ���������룬�Ҳ����ļ�����������notepad++�༭����notepad++Ĭ�ϸ�ʽ��utf-8���Ժ����׳���ġ�
::ע�⵼��wiz�е�gtd�ֲ�����̺�����������ʼǣ�������������ļ������ֲ�����̵Ĳ��ֽ���Ч���磺��GTD���л�������4.9C.doc ��ΪGTD���л�������  
::ע�����������е�/Y ��Ҫд��\Y����������Сдy���Ǵ�дY��û�й�ϵ
::ע��xcopy����ĵ�һ������ָ����Դ�ļ�Ŀ¼��·��������Դ�ļ���·��

::���û�������
path=c:\windows\system32
::�����̱���worklistbackward.xlsx
copy E:\netDisk\klive\�ĵ�\pomodoro\WorkListBackward(C).xlsx  E:\GTD 

::----------------------------------------------------------------------
::�����������������д��  ע���һ����������Դ�ļ���·��������Դ�ļ�Ŀ¼��·��
::copy /y Դ�ļ�·��   Ŀ��Ŀ¼
::�� copy /y E:\Document\Wiz\Data\Default\GTD\weekwork_Attachments\WeekWork C.xlsx E:\GTD
::---------------------------------\\

::-----------------------------
::���������Ѿ���Ҫ�ˣ�����Ϊ���Ժ�ο����㣬���԰���ǰ�ù��������������
::move  /y E:\GTD\GTDϵͳʹ���ֲ�*.doc*  E:\GTD\ԭ�����ֲἰ���̼����ϵı�
::move  /y E:\GTD\GTD���л�������*.doc*  E:\GTD\ԭ�����ֲἰ���̼����ϵı�

::�ֲὫ��Ϊwiz--���̵ĸ��������Բ��ٵ�������
::xcopy F:\�ҵ��ĵ�\ApplicationData\wiz\Data\Default\GTD\GTDϵͳʹ���ֲ�_Attachments 	E:\GTD /Y
::xcopy F:\�ҵ��ĵ�\ApplicationData\wiz\Data\Default\Knows\@GTD\GTD���л�������_Attachments 	E:\GTD /Y
::\\~
pause
