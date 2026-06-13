# Linux Fundamentals Notes 🚀

> Personal Linux Notes for DevOps Journey

---

# Table of Contents

1. Linux History
2. GNU Project
3. Linux Kernel
4. GNU/Linux Architecture
5. System Calls
6. Linux Distributions
7. Upstream vs Downstream vs Fork
8. Shell
9. Builtin vs External Commands
10. PATH Variable
11. Linux Filesystem Hierarchy
12. File Types
13. Hidden Files
14. Users & Groups
15. /etc/passwd
16. /etc/shadow
17. User Management
18. Group Management
19. Sudo
20. Permissions
21. Variables
22. SCP
23. Process Management
27. Labs & Challenges
28. DevOps Notes

---

# Linux History

## Unix

Unix هو الأب الروحي لمعظم أنظمة التشغيل الحديثة.

ظهر سنة 1969 داخل Bell Labs.

أنظمة كتير اتأثرت بيه:

- Linux
- BSD
- macOS

### معلومة مهمة

Linux ليس Unix.

Linux نظام Unix-Like.

يعني متأثر بيه لكنه ليس نسخة منه.

### مثال

تخيل Unix هو الجد.

Linux واحد من الأحفاد.

مش نفس الشخص لكنه واخد أغلب الصفات.

---

# GNU Project

أسسه Richard Stallman.

كان الهدف:

إنشاء نظام تشغيل حر بالكامل.

لكن المشروع كان ناقص Kernel.

---

# Linux Kernel

في سنة 1991 بدأ Linus Torvalds تطوير Linux Kernel.

Linux = Kernel فقط.

وليس نظام تشغيل كامل.

### مسؤوليات Kernel

- Process Management
- Memory Management
- Device Management
- File Systems
- CPU Scheduling

---

# GNU/Linux Architecture

```text
User
 ↓
Shell
 ↓
System Calls
 ↓
Kernel
 ↓
Hardware
```

## User

المستخدم.

---

## Shell

المترجم بينك وبين النظام.

---

## System Calls

الطريقة الرسمية للتواصل مع Kernel.

---

## Kernel

قلب النظام.

---

## Hardware

المعالج والرام والهارد.

### مثال واقعي

تخيل مطعم:

- User = العميل
- Shell = الجرسون
- Kernel = مدير المطبخ
- Hardware = المطبخ نفسه

العميل لا يدخل المطبخ.

الطلب يمر عبر الجرسون.

---

# Linux Distributions

التوزيعة عبارة عن:

```text
Linux Kernel
+
GNU Tools
+
Repositories
+
Package Manager
```

## أشهر التوزيعات

### Ubuntu

سهلة للمبتدئين.

---

### Debian

مشهورة بالاستقرار.

---

### Red Hat Enterprise Linux

الأكثر انتشارًا في الشركات.

---

### Rocky Linux

بديل مجاني لـ RHEL.

---

### AlmaLinux

بديل مجاني لـ RHEL.

---

### SUSE

مستخدمة في شركات كبيرة.

---

# Upstream vs Downstream vs Fork

## Upstream

المصدر الأصلي.

مثال:

```text
Red Hat
```

---

## Downstream

مشروع مبني على مشروع آخر.

---

## Fork

نسخة مستقلة بالكامل.

### مثال

```text
Red Hat
   ↓
 CentOS
   ↓
 Rocky Linux
```

---

# Shell

الـ Shell مسؤول عن تنفيذ الأوامر.

## أشهر الأنواع

```bash
bash
sh
zsh
fish
```

## معرفة الشيل الحالي

```bash
echo $SHELL
```

## تشغيل Bash

```bash
bash
```

## الخروج

```bash
exit
```

### معلومة

Bash ليس Linux.

Bash مجرد Shell.

---

# Builtin vs External Commands

## Builtin Commands

جزء من Shell نفسها.

أمثلة:

```bash
echo
cd
history
pwd
```

معرفة النوع:

```bash
type echo
```

---

## External Commands

برامج موجودة على الهارد.

أمثلة:

```bash
ls
cat
grep
find
```

معرفة النوع:

```bash
type ls
```

### مثال للتثبيت

Builtin مثل زرار النور في البيت.

External مثل النزول للمحل تشتري لمبة.

---

# PATH Variable

عرض PATH:

```bash
echo $PATH
```

مثال:

```text
/usr/local/bin:/usr/bin:/bin
```

عند كتابة:

```bash
ls
```

يقوم Linux بالبحث داخل PATH عن الملف التنفيذي.

### مثال

تخيل أمك قالت:

"دور على الشاحن"

أنت تبدأ تدور:

- الأوضة
- الصالة
- المكتب

Linux يعمل بنفس الطريقة.

---

# Linux Filesystem Hierarchy

```text
/
├── bin
├── boot
├── dev
├── etc
├── home
├── lib
├── media
├── opt
├── root
├── tmp
├── usr
└── var
```

## /

Root Directory.

أصل النظام بالكامل.

---

## /home

مجلدات المستخدمين.

مثال:

```text
/home/fadl
```

---

## /root

الـ Home الخاص بالمستخدم Root.

---

## /etc

ملفات الإعدادات.

---

## /var

Logs والبيانات المتغيرة.

---

## /tmp

ملفات مؤقتة.

---

## /usr

برامج وأدوات النظام.

---

## /opt

برامج إضافية.

---

## /media

الفلاشات والهاردات الخارجية.

### مثال للتثبيت

تخيل Linux عمارة.

كل Folder شقة لها وظيفة محددة.

---

# File Types

## Regular File

ملف عادي.

---

## Directory

مجلد.

---

## Symbolic Link

اختصار لملف آخر.

---

## Block Device

مثل الهارد.

---

## Character Device

مثل الكيبورد.

---

# Hidden Files

أي ملف يبدأ بـ:

```text
.
```

مثال:

```text
.bashrc
.profile
.gitignore
```

عرض الملفات المخفية:

```bash
ls -la
```

---

# Chapter Challenge

1. اعرف نوع Shell الحالي.
2. اعرض PATH.
3. اعرض الملفات المخفية.
4. انتقل إلى Home Directory.
5. استعرض محتويات /etc.
6. استعرض محتويات /var.
7. ابحث عن ملف .bashrc.

---

# Common Mistakes

❌ Linux = Operating System

✅ Linux = Kernel

---

❌ Bash = Linux

✅ Bash = Shell

---

❌ Root Directory = /root

✅ Root Directory = /

---

❌ Home User = /root

✅ Home User = /home/username

# What's Next? 🤔

لحد دلوقتي اتكلمنا عن:

- Linux History
- GNU Project
- Kernel
- Architecture
- Shell
- Commands
- PATH
- Filesystem

وده يعتبر الجزء اللي يخليك تعرف:

> Linux بيشتغل إزاي من جوه؟

لكن لسه ما عرفناش:

- مين يقدر يدخل النظام؟
- مين يقدر يفتح ملف؟
- مين يقدر يعدل ملف؟
- مين يقدر يشغل برنامج؟
- إزاي أمنع شخص من الوصول لبيانات شخص تاني؟

وهنا ندخل على أهم جزء في Linux Administration:

```text
Users
Groups
Permissions
Ownership
Sudo
```

وده الجزء اللي بيخلي Linux مناسب للسيرفرات والشركات.

---

## ليه الموضوع مهم؟

تخيل عندك سيرفر عليه:

- DevOps Engineers
- Developers
- Database Administrators
- Security Team

هل ينفع كل الناس يبقى عندها صلاحية تعمل أي حاجة؟

أكيد لا.

لو ده حصل هتبقى كارثة.

عشان كده Linux بيستخدم نظام:

```text
Users
+
Groups
+
Permissions
```

عشان يتحكم مين يعمل إيه.

---

## مثال واقعي

تخيل شركة فيها:

Ahmed
Mohamed
Sara

كل واحد له مكتب.

هل ينفع أحمد يدخل مكتب سارة ويعدل الملفات؟

غالبًا لا.

Linux بيطبق نفس الفكرة.

كل مستخدم له:

- حساب
- صلاحيات
- ملفات خاصة
- مجموعات ينتمي إليها

---

## العلاقة بين Users و Groups

بدل ما أدي صلاحيات لكل شخص لوحده:

أجمع الناس في Groups.

مثال:

```text
Developers Group

Ahmed
Mohamed
Ali
```

وأدي الصلاحية للمجموعة كلها.

وده أسهل بكتير في الإدارة.

---

## بعد ما نخلص الفصل ده هتكون قادر على:

✅ إنشاء مستخدمين

✅ حذف مستخدمين

✅ تعديل المستخدمين

✅ إنشاء مجموعات

✅ إضافة مستخدم لمجموعة

✅ فهم ملفات passwd و shadow

✅ التحكم في صلاحيات الملفات

✅ استخدام sudo

✅ حل أغلب مشاكل Permission Denied

ودي من أكتر المشاكل اللي هتقابلك في DevOps 😅

---

## حاجة هتلاحظها بعدين

كتير من مشاكل:

- Docker
- Jenkins
- Kubernetes
- Nginx
- Apache

سببها الحقيقي مش البرنامج نفسه.

سببها:

```text
Permissions
Ownership
Users
Groups
```
# Users & Groups 👥

بعد ما فهمنا Linux Architecture و Filesystem، نبدأ نتعرف على الناس اللي عايشة جوه النظام 😅

أي Linux Server مهما كان حجمه قائم على 3 حاجات:

```text
Users
Groups
Permissions
```

لو فهمتهم كويس هتحل نص مشاكل Linux.

---

# What is a User?

الـ User هو أي حساب موجود على النظام.

أمثلة:

```text
fadl
ahmed
mohamed
root
```

كل User يمتلك:

- Username
- Password
- Home Directory
- UID
- Primary Group
- Shell

---

## مثال واقعي

تخيل Linux عبارة عن عمارة.

كل شقة فيها شخص.

كل شخص عنده:

- مفتاح
- أوضة
- دولاب
- صلاحيات

الشخص ده هو الـ User.

---

# Why Users Exist?

لأن Linux نظام Multi User.

يعني أكثر من شخص يقدر يستخدم النظام.

مثال:

```text
Developer
DevOps Engineer
Database Admin
Security Engineer
```

كل واحد له صلاحيات مختلفة.

---

# User Information

كل مستخدم يمتلك:

```text
Username
UID
GID
Home Directory
Shell
```

مثال:

```text
ahmed
1001
1001
/home/ahmed
/bin/bash
```

---

# What is UID?

UID اختصار:

```text
User ID
```

رقم مميز لكل مستخدم.

---

## أمثلة

Root:

```text
UID = 0
```

أول User عادي:

```text
UID = 1000 (في Ubuntu و RHEL/Rocky الحديثة)
```

> **⚠️ ملاحظة:** في الإصدارات القديمة من RHEL/CentOS كان أول UID للمستخدم العادي يبدأ من **500** وليس 1000. في الأنظمة الحديثة (RHEL 7+، Ubuntu) الاتنين بيبدأ من 1000.

---

## معلومة مهمة

Linux لا يهتم بالاسم.

يهتم بالـ UID.

يعني ممكن تغير اسم المستخدم.

لكن UID هو الهوية الحقيقية.

---

## مثال للتثبيت

تخيل اسمك:

```text
محمد
```

لكن رقمك القومي:

```text
123456789
```

الدولة تتعامل مع الرقم.

Linux يتعامل مع UID.

---

# Root User 👑

أخطر مستخدم في Linux.

UID الخاص به:

```text
0
```

Root يقدر يعمل أي حاجة.

حرفيًا أي حاجة.

---

## يستطيع

✅ حذف أي ملف

✅ إنشاء مستخدمين

✅ حذف مستخدمين

✅ تعديل النظام

✅ إيقاف السيرفر

---

> **⚠️ معلومة مهمة:** Root مش مرتبط بالاسم "root".
> أي User يمتلك UID = 0 هو root فعلياً حتى لو اسمه "superuser" أو أي اسم تاني.
> Linux بيتعامل مع UID = 0 على إنه صاحب كل الصلاحيات.

---

## مثال مضحك

Root زي مدير اللعبة.

باقي الناس لاعيبة.

المدير يقدر يطرد أي حد من السيرفر 😂

---

# معرفة المستخدم الحالي

```bash
whoami
```

مثال:

```text
fadl
```

---

# معرفة UID

```bash
id
```

مثال:

```bash
uid=1000(fadl)
gid=1000(fadl)
groups=1000(fadl)
```

---

# What is a Group?

المجموعة عبارة عن تجميع مستخدمين.

بدل ما تعطي صلاحيات لكل شخص.

تعطيها لمجموعة كاملة.

---

## مثال

```text
Developers

Ahmed
Ali
Mohamed
```

كلهم في نفس Group.

---

# Why Groups Exist?

تخيل عندك:

50 Developer

هل هتدي كل واحد صلاحيات لوحده؟

أكيد لا.

تعمل Group اسمها:

```text
developers
```

وتضيفهم فيها.

---

# GID

اختصار:

```text
Group ID
```

زي UID لكن للمجموعات.

---

# عرض معلومات المستخدم

```bash
id username
```

مثال:

```bash
id ahmed
```

---

# Primary Group

كل مستخدم يمتلك Primary Group واحدة فقط.

مثال:

```text
ahmed
```

يمتلك:

```text
Primary Group = ahmed
```

---

# Secondary Groups

يمكن للمستخدم الانضمام لأكثر من مجموعة إضافية.

مثال:

```text
developers
docker
aws
```

---

## مثال واقعي

تخيل أحمد:

موظف في:

```text
IT Department
```

وده القسم الأساسي.

وفي نفس الوقت عضو في:

```text
Football Team
Security Committee
```

دول Secondary Groups.

---

# Linux User Database

Linux يخزن بيانات المستخدمين داخل:

```bash
/etc/passwd
```

---

# /etc/passwd

عرض الملف:

```bash
cat /etc/passwd
```

---

مثال:

```text
ahmed:x:1001:1001::/home/ahmed:/bin/bash
```

---

# شرح الحقول

```text
username : password placeholder : UID : GID : comment : home directory : shell
```

---

مثال:

```text
ahmed:x:1001:1001::/home/ahmed:/bin/bash
```

يعني:

```text
Username           = ahmed
Password Placeholder = x  ← يعني الباسورد موجود في /etc/shadow
UID                = 1001
GID                = 1001
Comment            = (فاضي في المثال ده)
Home               = /home/ahmed
Shell              = /bin/bash
```

---

> **ملاحظة:** الـ `x` في خانة الباسورد مش يعني إن فيه باسورد مخزن هنا.
> يعني إن الباسورد المشفر موجود في `/etc/shadow`.
> لو شيل الـ `x` وسيبت الخانة فاضية، المستخدم ده ممكن يدخل بدون باسورد على بعض الإعدادات.

---

# معلومة مهمة جدًا

كتير من الناس تفتكر:

```text
passwd file contains passwords
```

وده خطأ.

---

# أين توجد كلمات المرور؟

داخل:

```bash
/etc/shadow
```

---

# /etc/shadow

عرض الملف:

```bash
sudo cat /etc/shadow
```

---

مثال:

```text
ahmed:$6$salt$hashedpassword......:19500:0:99999:7:::
```

---

الملف يحتوي:

- Password Hash (مشفر)
- Last Change (تاريخ آخر تغيير للباسورد)
- Minimum Days (أقل عدد أيام قبل ما تقدر تغير الباسورد)
- Maximum Days (أقصى عدد أيام قبل ما الباسورد ينتهي)
- Warning Days (قبل انتهاء الباسورد بكام يوم تظهر تحذير)
- Expiration Date (تاريخ انتهاء الحساب)

---

# لماذا Shadow؟

لحماية كلمات المرور.

لأن `/etc/passwd` يقدر **أي مستخدم** يقرأه، لأنه محتاج لمعلومات زي الـ UID و Shell.

أما `/etc/shadow` فصلاحياته مقيدة:

```bash
ls -l /etc/shadow
```

الناتج غالبًا:

```text
---------- 1 root shadow 1234 ...
```

أو:

```text
-rw-r----- 1 root shadow 1234 ...
```

يعني Root فقط أو group shadow هم اللي يقدروا يقروه.

---

## مثال للتثبيت

تخيل عندك:

```text
كشف أسماء الموظفين
```

الجميع يراه.

ده passwd.

أما:

```text
الخزنة اللي فيها الرواتب
```

ده shadow.

---

# User Management

من أهم مهارات Linux Admin.

---

# Create User

```bash
useradd ahmed
```

أو

```bash
adduser ahmed
```

---

## الفرق بينهما

### useradd

Low-level command موجود في كل توزيعات Linux.

بيعمل المستخدم بدون أي تفاعل وبدون ما يطلب منك أي بيانات.

مثال:

```bash
useradd ahmed
```

مش بيسأل عن باسورد ولا اسم حقيقي.

لازم بعدها تعمل:

```bash
passwd ahmed
```

---

### adduser

**في Ubuntu/Debian:** سكريبت بيستخدم `useradd` في الخلفية لكن بيسألك بالتفاعل عن الباسورد والاسم الحقيقي والمجموعات.

**في RHEL/CentOS/Rocky:** `adduser` غالبًا مجرد symlink لـ `useradd`، يعني نفس الشيء بالظبط.

> **⚠️ مهم جداً:** لما تشتغل على RHEL/Rocky (زي الـ Hetzner VPS بتاعك)، `adduser` مش هيعمل interactive session زي Ubuntu. استخدم `useradd` وبعدين `passwd`.

---

# Set Password

```bash
passwd ahmed
```

---

# Delete User

```bash
userdel ahmed
```

---

حذف المستخدم مع Home Directory:

```bash
userdel -r ahmed
```

---

## تحذير ⚠️

```bash
userdel -r
```

يحذف ملفات المستخدم بالكامل.

---

> **ملاحظة:** لو مش استخدمتش `-r`، الـ Home Directory والملفات بتاعت المستخدم بتفضل على الـ disk وبتبقى ملكية UID بتاعه (اللي اتحذف). ممكن تسبب مشاكل لو اتعمل user جديد بنفس الـ UID بعدين.

---

# Modify User

```bash
usermod
```

---

# تغيير Shell

```bash
usermod -s /bin/bash ahmed
```

---

# Lock User

```bash
usermod -L ahmed
```

---

# Unlock User

```bash
usermod -U ahmed
```

---

# Group Management

---

# Create Group

```bash
groupadd developers
```

---

# Delete Group

```bash
groupdel developers
```

---

# Rename Group

```bash
groupmod -n devops developers
```

---

# Add User To Group

```bash
usermod -aG developers ahmed
```

---

## أهم Flag

```bash
-aG
```

الـ `a` معناها Append يعني "أضف".

الـ `G` معناها Secondary Groups.

**لو نسيت الـ `a` وكتبت `-G` بس:**

```bash
usermod -G developers ahmed
```

ده هيشيل ahmed من كل المجموعات الثانوية اللي هو فيها ويسيبه في developers بس.

ودي من أشهر الكوارث اللي بتحصل على Production 😅

---

# Check User Groups

```bash
groups ahmed
```

أو

```bash
id ahmed
```

---

# Common Mistakes 🚨

❌ passwd يحتوي الباسورد

✅ shadow يحتوي الباسورد المشفر، وpasswd يحتوي بيانات المستخدم فقط

---

❌ Root هو المستخدم اللي اسمه "root" فقط

✅ Root هو أي User يمتلك UID=0، حتى لو اسمه غير "root"

---

❌ useradd و adduser نفس الشيء في كل التوزيعات

✅ في Ubuntu: adduser سكريبت تفاعلي أسهل، في RHEL/Rocky: الاتنين نفس الشيء

---

❌ حذف User يحذف ملفاته دائمًا

✅ لازم تستخدم `-r` عشان تحذف الملفات:

```bash
userdel -r username
```

---

# DevOps Notes 🔥

أغلب الخدمات تعمل بحسابات خاصة بها.

مثال:

```text
nginx
mysql
postgres
nobody
```

---

Docker Daemon يعمل كمستخدم خاص.

---

Jenkins غالبًا يمتلك User خاص به.

---

أغلب مشاكل Jenkins ليست Jenkins.

أغلبها:

```text
Permissions
Ownership
Groups
```

---

# Interview Questions 🎯

1. ما الفرق بين UID و Username؟

2. ما الفرق بين passwd و shadow؟

3. ما الفرق بين Primary Group و Secondary Group؟

4. ما الفرق بين useradd و adduser؟

5. لماذا Root يمتلك UID = 0 ؟

6. ما وظيفة GID ؟

7. لماذا تم إنشاء Groups ؟

8. ماذا يحدث لو نسيت flag `-a` في `usermod -aG`؟ *(سؤال مهم جداً في Interviews)*

---

# Chapter Challenge 🧪

## Task 1

أنشئ مستخدم:

```bash
useradd devops
```

---

## Task 2

أنشئ Group:

```bash
groupadd engineers
```

---

## Task 3

أضف المستخدم للمجموعة.

---

## Task 4

غيّر الـ Shell إلى Bash.

---

## Task 5

اعرض معلومات المستخدم كاملة.

---

## Task 6

اعرض محتويات:

```bash
/etc/passwd
```

---

## Task 7

اعرض محتويات:

```bash
/etc/shadow
```

بصلاحيات Root.

---

## Goal

في نهاية الفصل يجب أن تكون قادرًا على:

✅ إنشاء مستخدم

✅ حذف مستخدم

✅ تعديل مستخدم

✅ إنشاء مجموعة

✅ حذف مجموعة

✅ إضافة مستخدم لمجموعة

✅ فهم passwd

✅ فهم shadow

✅ فهم UID و GID


# Permissions & Ownership 🔐

لو Users & Groups هم الناس اللي عايشين في النظام...

فـ Permissions هي القوانين اللي بتحكمهم.

وده من أهم أجزاء Linux كلها.

بصراحة؟

لو اشتغلت DevOps أو SysAdmin هتقضي جزء محترم من حياتك بتحل مشاكل Permissions 😂

---

# Why Permissions Exist?

تخيل عندك سيرفر عليه:

```text
Ahmed
Mohamed
Sara
Ali
```

هل ينفع أي حد يفتح ملفات أي حد؟

أكيد لا.

عشان كده Linux بيستخدم نظام صلاحيات قوي جدًا.

---

# Ownership

كل ملف في Linux يمتلك:

```text
Owner
Group
Others
```

---

مثال:

```bash
ls -l
```

الناتج:

```text
-rw-r--r-- 1 ahmed developers 500 Jun 1 file.txt
```

---

هنا:

```text
Owner  = ahmed
Group  = developers
Others = باقي العالم 😂
```

---

# Understanding ls -l Output

مثال:

```text
-rwxr-xr--
```

نقسمها:

```text
-      ← نوع الملف
rwx    ← صلاحيات Owner
r-x    ← صلاحيات Group
r--    ← صلاحيات Others
```

---

# Permission Types

Linux يمتلك 3 صلاحيات فقط.

بس منهم بيتبني كل شيء.

---

## Read (r)

قراءة الملف.

القيمة:

```text
4
```

---

## Write (w)

التعديل على الملف.

القيمة:

```text
2
```

---

## Execute (x)

تشغيل الملف.

القيمة:

```text
1
```

---

# Example

```text
rwx
```

تعني:

```text
Read
Write
Execute
```

---

```text
rw-
```

تعني:

```text
Read
Write
No Execute
```

---

```text
r--
```

تعني:

```text
Read Only
```

---

# Numeric Permissions

بدل كتابة:

```text
rwx
```

Linux يسمح باستخدام أرقام.

---

## Values

```text
r = 4
w = 2
x = 1
- = 0
```

---

# Common Values

## 7

```text
4+2+1 = rwx
```

---

## 6

```text
4+2 = rw-
```

---

## 5

```text
4+1 = r-x
```

---

## 4

```text
4 = r--
```

---

## 0

```text
0 = ---
```

---

# chmod

تغيير صلاحيات الملفات.

---

## Example

```bash
chmod 755 file.sh
```

---

يعني:

```text
Owner  = 7 = rwx
Group  = 5 = r-x
Others = 5 = r-x
```

---

## Another Example

```bash
chmod 644 notes.txt
```

---

يعني:

```text
Owner  = 6 = rw-
Group  = 4 = r--
Others = 4 = r--
```

---

## أشهر قيم هتقابلك

### 777

```text
rwx rwx rwx
```

الجميع يقدر يعمل أي شيء.

---

### 755

```text
rwx r-x r-x
```

شائع للبرامج والسكريبتات.

---

### 644

```text
rw- r-- r--
```

شائع للملفات العادية.

---

### 600

```text
rw-------
```

ملف خاص جداً، زي SSH Private Keys.

---

# Example For Real Life

تخيل شقة.

---

Read: تقدر تشوف الشقة.

Write: تقدر تغير العفش.

Execute: تملك مفتاح الدخول.

---

# Common Mistake 🚨

المبتدئ أول ما يقابل:

```text
Permission Denied
```

يعمل:

```bash
chmod 777
```

😂😂😂

---

ده زي واحد مفتاح عربيته ضاع.

فقام سايبها مفتوحة في الشارع.

المشكلة اتحلت؟

آه.

بس بطريقة كارثية.

---

**ليه 777 خطير؟**

لأنك بتدي كل أي حد على النظام (حتى المستخدمين الآخرين وأي برنامج شغال) صلاحية تعديل وتشغيل الملف.

على سيرفر Production ده كارثة أمنية.

---

# Symbolic Mode

بدل الأرقام.

---

## Add Execute

```bash
chmod +x script.sh
```

---

## Remove Write

```bash
chmod -w file.txt
```

---

## Add Read للـ Group فقط

```bash
chmod g+r file.txt
```

---

## الرموز المتاحة

```text
u = user (owner)
g = group
o = others
a = all (الثلاثة مع بعض)
```

مثال:

```bash
chmod o-x file.txt   ← اشيل Execute من Others
chmod a+r file.txt   ← اضيف Read للكل
chmod g+w file.txt   ← اضيف Write للـ Group
```

---

# Ownership

---

# Change Owner

```bash
chown ahmed file.txt
```

---

الملف أصبح ملك:

```text
ahmed
```

---

# Change Owner and Group

```bash
chown ahmed:developers file.txt
```

---

# Change Group Only

```bash
chgrp developers file.txt
```

---

# Verify Ownership

```bash
ls -l
```

---

# Practical Example

أنشئ ملف:

```bash
touch notes.txt
```

---

اعرض الصلاحيات:

```bash
ls -l
```

---

اجعل الملف خاص بك فقط:

```bash
chmod 600 notes.txt
```

---

اجعل الملف قابل للتنفيذ:

```bash
chmod +x notes.txt
```

---

# Directory Permissions

هنا الوضع مختلف شوية.

---

## Read على Directory

عرض أسماء الملفات (ls).

---

## Write على Directory

إنشاء وحذف ملفات داخل المجلد.

---

## Execute على Directory

الدخول للمجلد (cd).

---

> **⚠️ مهم:** Execute على Directory هي الأهم.
> بدونها مش هتقدر تدخل المجلد حتى لو عندك Read.
> Read بدون Execute = تشوف الأسماء بس مش تقدر تدخل.

---

# Example

```bash
chmod 755 myfolder
```

---

يعني:

```text
Owner  = rwx ← يدخل ويعدل وينشئ ويحذف
Group  = r-x ← يدخل ويشوف بس
Others = r-x ← يدخل ويشوف بس
```

---

# Permission Denied

من أشهر أخطاء Linux.

مثال:

```bash
./script.sh
```

الناتج:

```text
Permission denied
```

---

السبب غالبًا:

```text
No Execute Permission
```

الحل:

```bash
chmod +x script.sh
```

---

# Sudo

بعض العمليات تحتاج Root.

---

مثال:

```bash
apt update
```

قد تحتاج:

```bash
sudo apt update
```

---

# What Is sudo?

sudo =

```text
Superuser Do
```

---

يسمح لمستخدم عادي بتنفيذ أمر بصلاحيات Root **مؤقتاً**.

---

مثال:

```bash
sudo useradd ahmed
```

---

# Why Not Use Root Always?

لأن Root يقدر يدمر النظام بسهولة.

---

مثال كارثي مشهور:

```bash
rm -rf /
```

💀

---

لذلك نستخدم:

```bash
sudo
```

عند الحاجة فقط، ونشتغل بمستخدم عادي في الوقت الباقي.

---

> **ملاحظة:** مين يقدر يستخدم sudo محدد في ملف:
> ```bash
> /etc/sudoers
> ```
> أو في ملفات في:
> ```bash
> /etc/sudoers.d/
> ```
> في Ubuntu: المستخدمين في group `sudo` يقدروا يستخدموا sudo.
> في RHEL/Rocky: المستخدمين في group `wheel`.

---

# DevOps Notes 🔥

أغلب مشاكل:

```text
Docker
Jenkins
Nginx
Apache
Kubernetes
```

سببها الحقيقي:

```text
Permissions
Ownership
Groups
```

وليس البرنامج نفسه.

---

## Example

Jenkins لا يستطيع تشغيل Build.

السبب غالبًا:

```text
Jenkins User ليس لديه صلاحية على الـ Directory
```

---

Docker لا يستطيع قراءة ملف.

السبب غالبًا:

```text
Permission Problem على الملف أو المجلد
```

---

# Interview Questions 🎯

ما الفرق بين:

```text
644
755
777
```

---

ما الفرق بين:

```text
Owner
Group
Others
```

---

ما الفرق بين:

```bash
chmod
chown
chgrp
```

---

ما معنى:

```bash
chmod +x
```

---

لماذا يعتبر:

```bash
chmod 777
```

ممارسة سيئة من ناحية أمنية؟

---

ما الفرق بين صلاحيات الـ Execute على ملف وعلى Directory؟

---

# Chapter Challenge 🧪

## Task 1

أنشئ ملف:

```bash
touch project.txt
```

---

## Task 2

اعرض صلاحياته.

---

## Task 3

اجعل المالك فقط يستطيع القراءة والكتابة.

---

## Task 4

اجعل الملف قابل للتنفيذ.

---

## Task 5

أنشئ مجلد:

```bash
mkdir devops
```

---

## Task 6

اجعل المجلد:

```text
755
```

---

## Task 7

غيّر مالك الملف.

---

## Task 8

غيّر Group الملف.

---

## Goal

في نهاية الفصل يجب أن تكون قادرًا على:

✅ قراءة الصلاحيات

✅ تعديل الصلاحيات

✅ فهم chmod

✅ فهم chown

✅ فهم chgrp

✅ التعامل مع Permission Denied

✅ استخدام sudo بشكل صحيح

# Understanding Permissions Deeply 🔍

الصلاحيات في Linux تختلف حسب هل الشيء ده:

```text
File
أو
Directory
```

ودي نقطة ناس كتير بتغلط فيها.

---

# Permissions On Files

## Read (r)

لو عندك Read على ملف:

```text
✓ تقدر تفتح الملف
✓ تقدر تشوف محتواه
✓ تقدر تنسخه
```

مثال:

```bash
cat notes.txt
less notes.txt
more notes.txt
```

---

لكن لا يمكنك:

```text
✗ تعديل الملف
✗ حذف الملف
✗ تشغيل الملف
```

---

## Write (w)

لو عندك Write على ملف:

```text
✓ تعديل المحتوى
✓ إضافة بيانات
✓ حذف بيانات من داخل الملف
```

مثال:

```bash
echo "Hello" >> notes.txt
```

---

> **⚠️ ملاحظة مهمة:** حذف الملف نفسه مش متحكم فيه بـ Permission الملف، متحكم فيه بـ Write Permission على **المجلد** اللي الملف موجود فيه.
> يعني ممكن يبقى عندك Write على ملف لكن مش تقدر تحذفه لو معندكش Write على المجلد.

---

## Execute (x)

لو عندك Execute:

```text
✓ تشغيل الملف كبرنامج
✓ تشغيل Script
```

مثال:

```bash
./script.sh
```

---

لو Script بدون Execute:

```bash
./script.sh
```

ستظهر:

```text
Permission denied
```

---

> **معلومة إضافية:** ممكن تشغل Script بدون Execute Permission لو استدعيت الـ Shell صراحةً:
> ```bash
> bash script.sh
> ```
> ده بيشتغل لأنك مش بتشغل الملف نفسه، بتقول لـ bash "اقرأ الملف ده وشغله".
> لكن الطريقة الصح هي إنك تعمل chmod +x.

---

# Permissions On Directories

هنا الموضوع مختلف تمامًا.

---

# Read On Directory

```text
✓ رؤية أسماء الملفات
✓ عمل ls
```

مثال:

```bash
ls myfolder
```

---

# Write On Directory

```text
✓ إنشاء ملفات جديدة
✓ حذف ملفات (حتى لو مش مالكها)
✓ إعادة تسمية ملفات
```

مثال:

```bash
touch file.txt
rm file.txt
mv file1 file2
```

---

> **⚠️ مهم:** Write على Directory معناها إنك تقدر تحذف أي ملف جوّاه حتى لو مش مالكه.
> عشان كده المجلدات المشتركة زي /tmp بيتضاف عليها Sticky Bit (موضوع متقدم بعدين).

---

# Execute On Directory

دي أهم واحدة.

معناها:

```text
✓ الدخول للمجلد (cd)
✓ الوصول للملفات داخله
✓ عمل أي عملية على محتوياته
```

مثال:

```bash
cd myfolder
```

---

# مثال عملي مهم جداً

عندك:

```text
Directory = rw- (بدون Execute)
```

تقدر تشوف أسماء الملفات:

```bash
ls myfolder   ← يشتغل
```

لكن لا تستطيع:

```bash
cd myfolder   ← Permission denied
cat myfolder/file.txt   ← Permission denied
```

لأن Execute غير موجودة.

---

# ماذا يحدث لو أخذت rwx ؟

على ملف:

```text
✓ قراءة الملف
✓ تعديل الملف
✓ تشغيل الملف
```

---

على مجلد:

```text
✓ رؤية الملفات (ls)
✓ إنشاء ملفات
✓ حذف ملفات
✓ إعادة تسمية ملفات
✓ الدخول للمجلد (cd)
✓ الوصول لكل شيء داخله
```

---

# أشهر التركيبات

## r--

```text
قراءة فقط
```

---

## rw-

```text
قراءة + تعديل
```

---

## r-x

```text
قراءة + تشغيل (للملف) أو دخول ورؤية (للمجلد)
```

---

## rwx

```text
سيطرة كاملة
```

---

# مثال حقيقي من الشغل

ملف Script:

```bash
deploy.sh
```

صلاحياته:

```text
rw-
```

---

لما تحاول:

```bash
./deploy.sh
```

هتاخد:

```text
Permission denied
```

---

الحل:

```bash
chmod +x deploy.sh
```

فتصبح:

```text
rwx
```

ويشتغل.

---

# Mental Trick 🧠

تخيل عندك شقة.

Read: تقدر تبص من الشباك.

Write: تقدر تغير العفش.

Execute: معاك مفتاح الباب.

---

لو معاك:

```text
r--
```

أنت بتتفرج بس 😂

---

لو معاك:

```text
rw-
```

بتشوف وتغير العفش بس مش معاك مفتاح تدخل.

---

لو معاك:

```text
rwx
```

أنت صاحب الشقة حرفيًا.

# Environment Variables & Shell Environment 🌍

لحد دلوقتي كنا بنتعامل مع:

- Users
- Groups
- Files
- Permissions

لكن فيه حاجة Linux بيعتمد عليها بشكل ضخم جدًا وهي:

```text
Variables
```

تقريبًا كل حاجة في Linux فيها Variables.

---

# What is a Variable?

متغير بيحتوي على قيمة.

مثال:

```bash
name="Fadl"
```

---

عرض القيمة:

```bash
echo $name
```

الناتج:

```text
Fadl
```

---

## مثال بسيط

تخيل متغير عبارة عن ورقة مكتوب عليها معلومة.

بدل ما تكتب المعلومة كل مرة.

بتكتب اسم الورقة فقط.

---

# Create Variables

```bash
city="Mansoura"
```

---

عرضها:

```bash
echo $city
```

---

مثال آخر:

```bash
course="Linux"
```

---

```bash
echo $course
```

---

> **⚠️ مهم:** لازم تكتب المتغير بدون مسافات حوالين `=`:
> ```bash
> name="Fadl"   ✓
> name = "Fadl" ✗ ← ده هيدي error
> ```

---

# Display All Variables

```bash
env
```

---

أو

```bash
printenv
```

---

# Common Environment Variables

---

# USER

المستخدم الحالي.

```bash
echo $USER
```

مثال:

```text
fadl
```

---

# HOME

المجلد الرئيسي للمستخدم.

```bash
echo $HOME
```

مثال:

```text
/home/fadl
```

---

# SHELL

نوع الـ Shell الحالي.

```bash
echo $SHELL
```

مثال:

```text
/bin/bash
```

---

# PWD

المسار الحالي.

```bash
echo $PWD
```

---

# HOSTNAME

اسم الجهاز.

```bash
echo $HOSTNAME
```

---

# PATH

أهم Variable تقريبًا.

---

# PATH Variable

لما تكتب:

```bash
ls
```

Linux كيف عرف مكان البرنامج؟

---

الإجابة:

عن طريق PATH.

---

عرض PATH:

```bash
echo $PATH
```

مثال:

```text
/usr/local/bin:/usr/bin:/bin
```

---

Linux يبدأ يبحث من اليسار لليمين:

```text
/usr/local/bin  ← أول مكان
ثم
/usr/bin        ← تاني مكان
ثم
/bin            ← تالت مكان
```

حتى يجد البرنامج.

---

# How PATH Works?

مثال:

```bash
ls
```

Linux يفكر كالتالي:

```text
هل موجود؟  /usr/local/bin/ls  → لا
هل موجود؟  /usr/bin/ls        → نعم ✓ شغّله
```

---

# Locate Command

معرفة مكان البرنامج.

```bash
which ls
```

مثال:

```text
/usr/bin/ls
```

---

```bash
which cat
which grep
```

---

# Add New Path Temporarily

مثال:

```bash
export PATH=$PATH:/home/fadl/tools
```

---

الآن Linux سيبحث داخل:

```text
/home/fadl/tools
```

أيضًا.

---

> **ملاحظة:** "مؤقتاً" يعني طول الـ Session الحالي فقط. لما تقفل الـ Terminal وتفتحه تاني، PATH يرجع لأصله.
> عشان تخليه دائم، أضفه في `~/.bashrc`.

---

# Verify PATH

```bash
echo $PATH
```

---

# Why PATH Is Important?

بدون PATH ستضطر لكتابة:

```bash
/usr/bin/ls
```

كل مرة.

---

بدلًا من:

```bash
ls
```

---

# Common Mistake 🚨

كتير من الناس تمسح PATH بالخطأ.

مثال:

```bash
PATH=/myfolder
```

---

كده دمرت PATH بالكامل، وبعدها مش هتشتغل أغلب الأوامر.

---

الصحيح:

```bash
PATH=$PATH:/myfolder
```

`$PATH` معناها "الـ PATH القديم + إضافة المسار الجديد عليه".

---

# Shell Variables vs Environment Variables

---

# Shell Variable

```bash
name="Fadl"
```

---

متاحة داخل الـ Shell الحالي فقط.

لو شغّلت shell جديد، المتغير مش موجود فيه.

---

# Environment Variable

```bash
export name="Fadl"
```

---

بتصبح متاحة للـ Shell الحالي وكل العمليات الفرعية (Child Processes) اللي بتتشغل منه.

---

# Example

```bash
name="Fadl"
bash          ← شغّل shell جديد
echo $name    ← فاضي، المتغير مش موجود
exit          ← ارجع للـ shell الأصلي
```

---

لكن:

```bash
export name="Fadl"
bash
echo $name    ← يظهر "Fadl" ✓
```

---

# Export Command

من أهم أوامر Linux.

---

مثال:

```bash
export AWS_REGION=eu-central-1
```

---

أو:

```bash
export ENV=production
```

---

مستخدمة بكثرة في:

- Docker
- Kubernetes
- CI/CD
- Jenkins
- GitHub Actions

---

# Permanent Variables

إذا أردت حفظ Variable دائمًا (حتى بعد إغلاق الـ Terminal).

---

ملف:

```bash
~/.bashrc
```

---

أضف:

```bash
export MY_VAR="hello"
```

---

ثم:

```bash
source ~/.bashrc
```

---

# Source Command

إعادة تحميل الملف في نفس الـ Shell الحالي.

```bash
source ~/.bashrc
```

---

بدل تسجيل الخروج والدخول مرة أخرى.

---

> **الفرق بين `source` و تشغيل الملف عادي:**
> لو شغّلت:
> ```bash
> bash ~/.bashrc
> ```
> ده بيشغل الملف في shell منفصل، والمتغيرات مش بترجع لـ shell الأصلي.
>
> `source` بيشغل الملف في **نفس الـ Shell الحالي**، فالمتغيرات تأثيرها بيظهر مباشرة.

---

# DevOps Notes 🔥

سترى Variables كثيرًا في:

```text
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
DATABASE_URL
JENKINS_HOME
JAVA_HOME
PATH
```

---

لو لا تفهم Variables جيدًا.

ستتعب جدًا مع DevOps.

---

# SCP (Secure Copy) 🚚

من أشهر أدوات نقل الملفات في Linux.

---

# What Is SCP?

أداة تنقل الملفات بشكل آمن عبر SSH.

---

بدل:

```text
Flash Drive
Email
WhatsApp
```

😂

Linux لديه SCP.

---

> **⚠️ ملاحظة مهمة للـ DevOps:** SCP في الإصدارات الحديثة من OpenSSH (8.8+) تم تصنيفها كـ deprecated (قديمة ومش منصوح بيها) بسبب بعض القيود التقنية.
>
> البديل الأفضل حالياً هو:
> - `rsync` للنقل الذكي (بيكمل من حيث وقف لو الاتصال انقطع، وبيتجنب نقل الملفات اللي اتنقلت بالفعل)
> - `sftp` للتصفح والنقل التفاعلي
>
> بس SCP لسه شايعة وموجودة في الـ CVs والـ Interviews، فلازم تعرفها.

---

# Copy File To Remote Server

```bash
scp file.txt user@server:/tmp
```

---

مثال:

```bash
scp notes.txt ubuntu@192.168.1.10:/home/ubuntu
```

---

# Copy Folder

```bash
scp -r project ubuntu@192.168.1.10:/home/ubuntu
```

---

# Copy From Server To Local Machine

```bash
scp user@server:/tmp/file.txt .
```

---

مثال:

```bash
scp ubuntu@192.168.1.10:/tmp/log.txt .
```

---

# Specify SSH Port

```bash
scp -P 2222 file.txt user@server:/tmp
```

---

# How SCP Works?

في الخلفية يستخدم:

```text
SSH
```

---

لذلك يجب أن يكون SSH يعمل على السيرفر.

---

# Real World Example

لديك Jenkins Server وتريد رفع ملف.

---

```bash
scp build.zip ubuntu@server:/opt/apps
```

---

تم النقل بأمان.

---

# Interview Questions 🎯

ما الفرق بين:

```text
Shell Variable
Environment Variable
```

---

ما وظيفة:

```bash
export
```

---

ما وظيفة:

```bash
source
```

---

ما الفرق بين `source script.sh` و `bash script.sh`؟

---

كيف يعمل PATH؟

---

كيف يعرف Linux مكان الأمر ls؟

---

ما وظيفة SCP؟

---

ما الفرق بين:

```bash
scp
cp
```

---

# Chapter Challenge 🧪

## Task 1

أنشئ Variable اسمها:

```bash
course="Linux"
```

---

## Task 2

اعرض قيمتها.

---

## Task 3

اعرض:

```bash
HOME
USER
SHELL
PWD
PATH
```

---

## Task 4

اعرف مكان:

```bash
ls
cat
grep
```

باستخدام:

```bash
which
```

---

## Task 5

أضف مسار جديد إلى PATH.

---

## Task 6

أنشئ Variable باستخدام export.

---

## Task 7

أضف Variable داخل:

```bash
~/.bashrc
```

---

## Task 8

أعد تحميل الملف باستخدام:

```bash
source
```

---

## Goal

في نهاية الفصل يجب أن تكون قادرًا على:

✅ فهم Variables

✅ فهم Environment Variables

✅ فهم PATH

✅ استخدام export

✅ استخدام source

✅ نقل الملفات باستخدام SCP

✅ فهم كيفية إيجاد Linux للأوامر

# Process Management ⚙️

أي برنامج شغال على Linux يسمى:

```text
Process
```

سواء كان:

- Nginx
- Docker
- Jenkins
- MySQL
- Firefox
- Bash

كلهم Processes.

---

# What is a Process?

الـ Process عبارة عن:

```text
Program In Execution
```

يعني برنامج شغال حاليًا.

---

## مثال

قبل التشغيل:

```text
vim
```

برنامج موجود على الـ Disk.

---

بعد التشغيل:

```text
vim file.txt
```

أصبح Process في الذاكرة وليه PID.

---

# Process Lifecycle

```text
New
 ↓
Ready
 ↓
Running
 ↓
Waiting
 ↓
Terminated
```

---

# PID

كل Process تمتلك:

```text
PID = Process ID
```

رقم فريد لكل Process، Linux يحدده تلقائياً.

---

> **⚠️ مهم:** PID مش ثابت. كل مرة بتشغّل البرنامج بياخد PID جديد.

---

## مثال

```bash
ps
```

الناتج:

```text
PID TTY    TIME CMD
1542 pts/0 00:00:00 bash
```

---

# PPID

اختصار:

```text
Parent Process ID
```

---

كل Process لها أب (Parent).

---

مثال:

```text
bash (PID=1542)
 └── vim (PID=2301, PPID=1542)
```

---

bash هو Parent.

vim هو Child.

---

# View Running Processes

## ps

يعرض العمليات الخاصة بالـ Terminal الحالي فقط.

```bash
ps
```

---

## ps aux

من أشهر الأوامر في Linux.

```bash
ps aux
```

---

يعرض كل العمليات على النظام مع تفاصيلها:

```text
a = العمليات بتاعت كل المستخدمين
u = اعرض بصيغة user-oriented (فيها اسم المستخدم والـ CPU والـ Memory)
x = اعرض العمليات اللي مالهاش Terminal (background services)
```

---

## Example

```bash
ps aux | grep nginx
```

---

البحث عن عملية nginx.

---

# top

مراقبة العمليات بشكل لحظي (real-time).

```bash
top
```

---

يعرض:

- CPU Usage
- Memory Usage
- Running Processes

---

يشبه:

```text
Task Manager
```

في Windows.

اضغط `q` للخروج.

---

# htop

نسخة أجمل وأسهل من top.

```bash
htop
```

---

مميزاته:

✅ ألوان

✅ أسهل في القراءة

✅ يمكن التنقل بالكيبورد وحذف Process مباشرة

---

تثبيته:

Ubuntu:

```bash
sudo apt install htop
```

---

Rocky Linux / RHEL:

```bash
sudo dnf install htop
```

---

# Find Specific Process

---

## pgrep

```bash
pgrep nginx
```

---

يعرض PID فقط.

---

## pidof

```bash
pidof nginx
```

---

# Kill Process

---

## kill

إيقاف Process باستخدام PID.

```bash
kill 1234
```

---

# Signals

Linux لا يقتل Process مباشرة.

بل يرسل Signal.

الـ Signal عبارة عن رسالة للـ Process.

---

## SIGTERM (15)

الافتراضي عند استخدام `kill` بدون options.

```bash
kill PID
```

---

يطلب من البرنامج الإغلاق بشكل طبيعي (graceful shutdown).

البرنامج يقدر يستقبل الـ Signal ويعمل cleanup قبل ما يقفل.

---

## SIGKILL (9)

إجبار العملية على التوقف فوراً.

البرنامج مش بيقدر يتجاهله ومش بيعمل cleanup.

```bash
kill -9 PID
```

---

## متى تستخدم -9؟

لو البرنامج مش بيستجاب لـ SIGTERM.

استخدمه كآخر حل.

---

## تشبيه واقعي

SIGTERM:

```text
"لو سمحت اخرج من الأوضة، خد وقتك"
```

---

SIGKILL:

```text
"الشرطة وصلت، اخرج دلوقتي" 😂
```

---

# killall

قتل العمليات بالاسم.

---

مثال:

```bash
killall firefox
```

---

بيقتل كل الـ processes اللي اسمها firefox.

---

# pkill

يشبه killall لكن يدعم patterns.

---

مثال:

```bash
pkill nginx
pkill -9 java
```

---

# Foreground & Background

Linux يسمح بتشغيل البرامج في الخلفية.

---

# Foreground Process

البرنامج يأخذ التيرمنال بالكامل.

لا تقدر تكتب أوامر تانية طول ما هو شغال.

---

مثال:

```bash
ping google.com
```

---

# Stop Process Temporarily

اضغط:

```text
CTRL + Z
```

ده بيوقف البرنامج مؤقتاً ويرجعك للـ Terminal.

البرنامج مش اتقتل، بس Paused.

---

# Background Process

تشغيل برنامج بالخلفية من الأول.

---

مثال:

```bash
ping google.com &
```

لاحظ الـ `&` في الآخر.

---

البرنامج يعمل في الخلفية وأنت تقدر تكتب أوامر تانية.

---

# Jobs

عرض العمليات اللي في الخلفية أو اتوقفت بـ CTRL+Z.

```bash
jobs
```

---

مثال:

```text
[1]+ Stopped   ping google.com
[2]  Running   sleep 300 &
```

---

# bg

استئناف عملية متوقفة وإرسالها للخلفية.

```bash
bg
```

أو:

```bash
bg %1   ← استئناف job رقم 1
```

---

# fg

إرجاع عملية من الخلفية للمقدمة.

```bash
fg
```

أو:

```bash
fg %1   ← إرجاع job رقم 1
```

---

# Nice Value

تحديد أولوية Process في استخدام الـ CPU.

---

القيم من:

```text
-20 (أعلى أولوية)
إلى
19  (أقل أولوية)
```

---

كلما قلّ الرقم: Priority أعلى (يستخدم CPU أكتر).

---

> **⚠️ مهم:** القيم السالبة (تعني أولوية أعلى) تحتاج Root.
> المستخدم العادي يقدر بس يرفع الرقم (يقلل الأولوية) ومش يخفضه.

---

# Example

```bash
nice -n 10 command
```

تشغيل بأولوية أقل (مناسب للمهام الثقيلة في الخلفية).

---

```bash
sudo nice -n -10 command
```

تشغيل بأولوية أعلى (يحتاج Root).

---

# Renice

تغيير الأولوية بعد التشغيل.

```bash
renice 5 -p PID
```

---

# Monitor Memory Usage

---

## free

```bash
free -h
```

---

يعرض:

```text
total    used    free    shared    buff/cache    available
```

---

> **ملاحظة:** الـ available هو الأهم، مش الـ free.
> Linux بيستخدم الذاكرة الحرة كـ cache للملفات، فـ free بيبان صغير حتى لو الجهاز مش مضغوط.

---

# Monitor CPU

---

## uptime

```bash
uptime
```

---

يعرض:

```text
Load Average
```

اللود average بيبين متوسط ضغط الـ CPU في آخر 1 دقيقة، 5 دقائق، 15 دقيقة.

لو اللود أعلى من عدد الـ CPU cores = السيرفر مضغوط.

---

# Process Tree

عرض العمليات كشجرة.

```bash
pstree
```

---

مثال:

```text
systemd
 ├─ sshd
 ├─ nginx
 ├─ docker
 └─ mysql
```

---

# Systemd

في الأنظمة الحديثة:

```text
PID 1 = systemd
```

---

أول process تشتغل بعد الـ Kernel.

وأب معظم العمليات.

---

# DevOps Notes 🔥

أكثر أوامر ستستخدمها:

```bash
ps aux
top
htop
kill
pgrep
```

---

عندما يتوقف سيرفر:

أول سؤال:

```text
هل الخدمة ما زالت تعمل؟
```

---

لذلك أول أوامر الفحص:

```bash
ps aux | grep nginx     ← هل nginx شغال؟
systemctl status nginx  ← ما حالة الـ service؟
```

---

إذا كان Jenkins بطيئًا:

```bash
top
```

---

إذا كان Docker يستهلك RAM:

```bash
htop
free -h
```

---

إذا كان Process معلقة:

```bash
kill -9 PID
```

---

# Common Mistakes 🚨

❌ kill = قتل فوري

✅ kill يرسل SIGTERM (طلب إغلاق طبيعي)

---

❌ kill -9 هو الحل دائمًا

✅ استخدم kill عادي أول، وكـ kill -9 آخر حل فقط

---

❌ PID ثابت

✅ PID يتغير مع كل تشغيل

---

❌ free في free -h هو الذاكرة المتاحة للاستخدام

✅ available هو الرقم الصحيح للذاكرة المتاحة فعلياً

---

# Interview Questions 🎯

ما الفرق بين:

```bash
kill
kill -9
```

---

ما الفرق بين:

```bash
ps
top
htop
```

---

ما هو PID؟

---

ما هو PPID؟

---

ما الفرق بين:

```bash
bg
fg
```

---

ما وظيفة:

```bash
jobs
```

---

ما هو Parent Process؟

---

ما هو Child Process؟

---

ما معنى Load Average في uptime؟

---

# Chapter Challenge 🧪

## Task 1

اعرض العمليات الحالية.

```bash
ps
```

---

## Task 2

اعرض جميع العمليات.

```bash
ps aux
```

---

## Task 3

ابحث عن bash.

```bash
ps aux | grep bash
```

---

## Task 4

شغّل:

```bash
sleep 300
```

---

## Task 5

اعرف PID الخاص بها.

```bash
pgrep sleep
```

---

## Task 6

اقتل العملية.

```bash
kill PID
```

---

## Task 7

شغّل:

```bash
ping google.com
```

---

## Task 8

أرسلها للخلفية بـ CTRL+Z ثم bg.

---

## Task 9

اعرض jobs.

---

## Task 10

أعدها للمقدمة باستخدام:

```bash
fg
```

---

# Goal

في نهاية الفصل يجب أن تكون قادرًا على:

✅ فهم Process

✅ فهم PID و PPID

✅ استخدام ps

✅ استخدام top

✅ استخدام htop

✅ استخدام kill و kill -9

✅ استخدام jobs

✅ استخدام bg و fg

✅ تحليل العمليات على السيرفر

✅ فهم Load Average