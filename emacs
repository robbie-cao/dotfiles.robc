;; 设置我们自有插件目录
;;******************************************************************
(add-to-list 'load-path "/opt/local/share/emacs/site-lisp")
(progn (cd "/opt/local/share/emacs/site-lisp") (normal-top-level-add-subdirs-to-load-path))
(when (file-exists-p "/usr/share/emacs/site-lisp/debian-startup.el")
  (load "/usr/share/emacs/site-lisp/debian-startup"))

;; 加载常用功能库
;;******************************************************************
(require 'column-marker)
(require 'pair-mode)
(require 'align)
(require 'linum)
(require 'auto-complete)
(global-auto-complete-mode t)
(load-library "align")

;============================ 语言环境字符集设置 =================================
;;这一部份主要用在linux 环境下，windows下没什么作用
;; (set-language-environment 'Chinese-GB)
;; (set-keyboard-coding-system 'utf-8)
;; (set-clipboard-coding-system 'utf-8)
;; (set-terminal-coding-system 'utf-8)
;; (set-buffer-file-coding-system 'utf-8)
;; (set-default-coding-systems 'utf-8)
;; (set-selection-coding-system 'utf-8)
;; (modify-coding-system-alist 'process "*" 'utf-8)
;; (setq default-process-coding-system '(utf-8 . utf-8))
;; (setq-default pathname-coding-system 'utf-8)
;; (set-file-name-coding-system 'utf-8)
;; (setq ansi-color-for-comint-mode t) ;;处理shell-mode乱码,好像没作用
;=========================== 语言环境字符集设置结束 ===============================

;============================ MS Windows环境下字体设置 ===========================
;(setq default-frame-alist
;(append
;'((font . "fontset-chinese")) default-frame-alist))


;(create-fontset-from-fontset-spec
;"-outline-Courier New-normal-r-normal-normal-13-97-96-96-c-*-fontset-chinese")
;(set-fontset-font
;"fontset-default" nil
;"-outline-新宋体-normal-r-normal-normal-14-*-96-96-c-*-iso10646-1" nil 'prepend)
;(set-fontset-font
;"fontset-chinese" 'kana
;"-outline-新宋体-normal-r-normal-normal-14-*-96-96-c-*-iso10646-1" nil 'prepend)
;(set-fontset-font
;"fontset-chinese" 'han
;"-outline-新宋体-normal-r-normal-normal-14-*-96-96-c-*-iso10646-1" nil 'prepend)
;(set-fontset-font
;"fontset-chinese" 'cjk-misc
;"-outline-新宋体-normal-r-normal-normal-14-*-96-96-c-*-iso10646-1" nil 'prepend)
;(set-fontset-font
;"fontset-chinese" 'symbol
;"-outline-新宋体-normal-r-normal-normal-14-*-96-96-c-*-iso10646-1" nil 'prepend)
;(set-default-font "fontset-chinese")

;===========================MS Windows环境下字体设置结束 =========================

;============================ Linux环境下字体设置 =================================

;; (create-fontset-from-fontset-spec
;; "-*-courier-medium-r-normal-*-14-*-*-*-*-*-fontset-courier")
;; (set-default-font "fontset-courier")
;; (setq default-frame-alist
;; (append
;; '((font . "fontset-courier")) default-frame-alist))

;; (set-fontset-font
;; "fontset-default" nil
;; "-*-simsun-*-*-*-*-14-*-*-*-*-*-gb2312.1980-*" nil 'prepend)
;; (set-fontset-font
;; "fontset-courier" 'kana
;; "-*-simsun-*-*-*-*-14-*-*-*-*-*-gbk-0" nil 'prepend)
;; (set-fontset-font
;; "fontset-courier" 'han
;; "-*-simsun-*-*-*-*-14-*-*-*-*-*-gbk-0" nil 'prepend)
;; (set-fontset-font
;; "fontset-courier" 'cjk-misc
;; "-*-simsun-*-*-*-*-14-*-*-*-*-*-gbk-0" nil 'prepend)

;============================ Linux环境下字体设置结束 ==============================


;;;;;;;;;;;;;;;;;;;;语言环境字体设置结束;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;解决中英文混排不能正确fill的问题,好像没什么用
;; (put-charset-property 'chinese-cns11643-5 'nospace-between-words t)
;; (put-charset-property 'chinese-cns11643-6 'nospace-between-words t)
;; (put-charset-property 'chinese-cns11643-7 'nospace-between-words t)


;;;;;;;;;;;;;;;;;;;;;;;;;;; 设置窗口界面 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;(set-foreground-color "grey")
;(set-background-color "black")
;(set-cursor-color "gold1")
;(set-mouse-color "gold1")

;(set-scroll-bar-mode nil)
;;取消滚动栏

;;(customize-set-variable 'scroll-bar-mode 'right))
;;设置滚动栏在窗口右侧，而默认是在左侧

;(tool-bar-mode nil)
;;取消工具栏

(setq default-frame-alist
      '((vertical-scroll-bars) 
	(top . 25)
	(left . 45) 
	(width . 110)
	(height . 40) 
	(background-color . "black")
	(foreground-color . "grey")
	(cursor-color . "gold1")
	(mouse-color . "gold1")
	(tool-bar-lines . 0)
	(menu-bar-lines . 1)
	(right-fringe)
	(left-fringe)))


;; 设置另外一些颜色：语法高亮显示的背景和主题，区域选择的背景和主题，二次选择的背景和选择
(set-face-foreground 'highlight "white")
(set-face-background 'highlight "blue")
(set-face-foreground 'region "cyan")
(set-face-background 'region "blue")
(set-face-foreground 'secondary-selection "skyblue")
(set-face-background 'secondary-selection "darkblue")

;;;;;;;;;;;;;;;;;;;;;;;;;;;; 设置界面结束 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;; 显示时间设置 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(display-time-mode 1);;启用时间显示设置，在minibuffer上面的那个杠上
(setq display-time-24hr-format t);;时间使用24小时制
(setq display-time-day-and-date t);;时间显示包括日期和具体时间
(setq display-time-use-mail-icon t);;时间栏旁边启用邮件设置
(setq display-time-interval 10);;时间的变化频率，单位多少来着？

;;;;;;;;;;;;;;;;;;;;;;;;;;; 显示时间设置结束 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;定制操作习惯;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;设置打开文件的缺省路径
(setq default-directory "~")

;;ido的配置,这个可以使你在用C-x C-f打开文件的时候在后面有提示;
;;这里是直接打开了ido的支持，在emacs23中这个是自带的.
(ido-mode t)

(setq visible-bell t)
;;关闭烦人的出错时的提示声
(setq inhibit-startup-message t)
;;关闭emacs启动时的画面

(setq gnus-inhibit-startup-message t)
;;关闭gnus启动时的画面

;(fset 'yes-or-no-p 'y-or-n-p)
;; 改变 Emacs 固执的要你回答 yes 的行为。按 y 或空格键表示 yes，n 表示 no。

(setq font-lock-maximum-decoration t)
;(setq font-lock-global-modes '(not shell-mode text-mode))
(setq font-lock-verbose t)
(setq font-lock-maximum-size '((t . 1048576) (vm-mode . 5250000)))
;; 语法高亮。除 shell-mode 和 text-mode 之外的模式中使用语法高亮。

(setq column-number-mode t)
(setq line-number-mode t)
;;显示行列号
(require 'linum)
(global-linum-mode 1)

(setq mouse-yank-at-point t)
;;不要在鼠标点击的那个地方插入剪贴板内容。我不喜欢那样，经常把我的文档搞的一团糟。我觉得先用光标定位，然后鼠标中键点击要好的多。不管你的光标在文档的那个位置，或是在 minibuffer，鼠标中键一点击，X selection 的内容就被插入到那个位置。

(setq kill-ring-max 200)
;;设置粘贴缓冲条目数量.用一个很大的kill ring(最多的记录个数). 这样防止我不小心删掉重要的东西

(setq-default auto-fill-function 'do-auto-fill)
; Autofill in all modes;;
(setq default-fill-column 120)
;;把 fill-column 设为 60. 这样的文字更好读

(setq-default indent-tabs-mode nil)
(setq default-tab-width 8)
(setq tab-stop-list ())
;;不用 TAB 字符来indent, 这会引起很多奇怪的错误。编辑 Makefile 的时候也不用担心，因为 makefile-mode 会把 TAB 键设置成真正的 TAB 字符，并且加亮显示的。

(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)
;;设置 sentence-end 可以识别中文标点。不用在 fill 时在句号后插入两个空格。

(setq enable-recursive-minibuffers t)
;;可以递归的使用 minibuffer

(setq scroll-margin 3 scroll-conservatively 10000)
;;防止页面滚动时跳动， scroll-margin 3 可以在靠近屏幕边沿3行时就开始滚动，可以很好的看到上下文。

(setq major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)
;;设置缺省主模式是text，,并进入auto-fill次模式.而不是基本模式fundamental-mode

(setq show-paren-mode t) ;;打开括号匹配显示模式
(setq show-paren-style 'parenthesis)
;;括号匹配时可以高亮显示另外一边的括号，但光标不会烦人的跳到另一个括号处。

(setq mouse-avoidance-mode 'animate)
;;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线。

(setq frame-title-format "emacs@%b")
;;在标题栏显示buffer的名字，而不是 emacs@wangyin.com 这样没用的提示。

(setq uniquify-buffer-name-style 'forward);;好像没起作用
;; 当有两个文件名相同的缓冲时，使用前缀的目录名做 buffer 名字，不用原来的foobar 形式。

(setq auto-image-file-mode t)
;;让 Emacs 可以直接打开和显示图片。

;(auto-compression-mode 1) 
;打开压缩文件时自动解压缩。

;(setq global-font-lock-mode t)
;;进行语法加亮。

(setq-default kill-whole-line t)
;; 在行首 C-k 时，同时删除该行。

(add-hook 'comint-output-filter-functions
	  'comint-watch-for-password-prompt)
;;当你在shell、telnet、w3m等模式下时，必然碰到过要输入密码的情况,此时加密显出你的密码

;; (setq version-control t);;启用版本控制，即可以备份多次
;; (setq kept-old-versions 2);;备份最原始的版本两次，及第一次编辑前的文档，和第二次编辑前的文档
;; (setq kept-new-versions 1);;备份最新的版本1次，理解同上
;; (setq delete-old-versions t);;删掉不属于以上3中版本的版本
;; (setq backup-directory-alist '(("." . "~/backups")));;设置备份文件的路径
;; (setq backup-by-copying t);;备份设置方法，直接拷贝
;; Emacs 中，改变文件时，默认都会产生备份文件(以 ~ 结尾的文件)。可以完全去掉
;; (并不可取)，也可以制定备份的方式。这里采用的是，把所有的文件备份都放在一
;; 个固定的地方("~/backups")。对于每个备份文件，保留最原始的两个版本和最新的
;; 1个版本。并且备份的时候，备份文件是复本，而不是原件。

(setq make-backup-files nil)
;; 设定不产生备份文件

(setq auto-save-mode nil)
;;自动保存模式

(setq-default make-backup-files nil)
;; 不生成临时文件

(put 'scroll-left 'disabled nil) ;允许屏幕左移
(put 'scroll-right 'disabled nil) ;允许屏幕右移
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'LaTeX-hide-environment 'disabled nil)
;;把这些缺省禁用的功能打开。

;;允许emacs和外部其他程序的粘贴
(setq x-select-enable-clipboard t)

(setq mouse-yank-at-point t)
;;使用鼠标中键可以粘贴

(setq user-full-name "Robbie Cao")
(setq user-mail-address "robbie.cao@gmail.com")
;;设置有用的个人信息,这在很多地方有用。

(setq require-final-newline t)
;; 自动的在文件末增加一新行

(setq-default transient-mark-mode t)
;;Non-nil if Transient-Mark mode is enabled.

(setq track-eol t)
;; 当光标在行尾上下移动的时候，始终保持在行尾。

(setq Man-notify-method 'pushy)
;; 当浏览 man page 时，直接跳转到 man buffer。

(setq next-line-add-newlines nil)
;;Emacs 21 中已经是缺省设置。按 C-n 或向下键时不添加新行。

(global-set-key [home] 'beginning-of-buffer)
(global-set-key [end] 'end-of-buffer)
;;设置home键指向buffer开头，end键指向buffer结尾


(global-set-key (kbd "C-,") 'scroll-left)
;; "C-,"设为屏幕左移命令
(global-set-key (kbd "C-.") 'scroll-right)
;; "C-."设为屏幕右移命令

(global-set-key [f1] 'manual-entry)
(global-set-key [C-f1] 'info )

(global-set-key [f3] 'repeat-complex-command)

(global-set-key [f4] 'other-window)
;; 跳转到 Emacs 的另一个buffer窗口

(defun du-onekey-compile ()
  "Save buffers and start compile"
  (interactive)
  (save-some-buffers t)
  (switch-to-buffer-other-window "*compilation*")
  (compile compile-command))
(global-set-key [C-f5] 'compile)
(global-set-key [f5] 'du-onekey-compile)
;; C-f5, 设置编译命令; f5, 保存所有文件然后编译当前窗口文件

(global-set-key [f6] 'gdb) 
;;F6设置为在Emacs中调用gdb

(global-set-key [C-f7] 'previous-error)
(global-set-key [f7] 'next-error)

(defun open-eshell-other-buffer ()
  "Open eshell in other buffer"
  (interactive)
  (split-window-vertically)
  (eshell))
(global-set-key [(f8)] 'open-eshell-other-buffer)
(global-set-key [C-f8] 'eshell)
;;目的是开一个shell的小buffer，用于更方便地测试程序(也就是运行程序了)，我经常会用到。
;;f8就是另开一个buffer然后打开shell，C-f8则是在当前的buffer打开shell

(setq speedbar-show-unknown-files t);;可以显示所有目录以及文件
(setq dframe-update-speed nil);;不自动刷新，手动 g 刷新
(setq speedbar-update-flag nil)
(setq speedbar-use-images nil);;不使用 image 的方式
(setq speedbar-verbosity-level 0)

(global-set-key [f9] 'speedbar)
;;设置f9调用speedbar命令
;;使用 n 和 p 可以上下移动，
;; + 展开目录或文件进行浏览，- 收缩，RET 访问目录或文件，g 更新 speedbar。

(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top)
;;让 dired 可以递归的拷贝和删除目录。
(global-set-key [C-f9] 'dired)
;;设置[C-f9]为调用dired命令

(global-set-key [f10] 'undo) 
;;设置F10为撤销

(global-set-key [f11] 'calendar)
;;设置F11快捷键指定Emacs 的日历系统

(global-set-key [f12] 'list-bookmarks)
;;设置F12 快速察看日程安排

(setq time-stamp-active t)
(setq time-stamp-warn-inactive t)
(setq time-stamp-format "%:y-%02m-%02d %3a %02H:%02M:%02S robc")
;; 设置时间戳，标识出最后一次保存文件的时间。

;(global-set-key (kbd "M-g") 'goto-line)
;;设置M-g为goto-line

(global-set-key (kbd "C-SPC") 'nil)
;;取消control+space键设为mark

;(global-set-key (kbd "M-") 'set-mark-command)
;;这样 我就不用按 C-@ 来 setmark 了, C-@ 很不好按。

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;定制操作习惯结束;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 设置日历 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;设置日历的一些颜色
(setq calendar-load-hook
      '(lambda ()
	 (set-face-foreground 'diary-face "skyblue")
	 (set-face-background 'holiday-face "slate blue")
	 (set-face-foreground 'holiday-face "white")))

;;设置我所在地方的经纬度，calendar里有个功能是日月食的预测，和你的经纬度相联系的。
;; 让emacs能计算日出日落的时间，在 calendar 上用 S 即可看到
(setq calendar-latitude +39.54)
(setq calendar-longitude +116.28)
(setq calendar-location-name "北京")

;; 设置阴历显示，在 calendar 上用 pC 显示阴历
(setq chinese-calendar-celestial-stem
      ["甲" "乙" "丙" "丁" "戊" "己" "庚" "辛" "壬" "癸"])
(setq chinese-calendar-terrestrial-branch
      ["子" "丑" "寅" "卯" "辰" "巳" "戊" "未" "申" "酉" "戌" "亥"])

;; 设置 calendar 的显示
(setq calendar-remove-frame-by-deleting t)
(setq calendar-week-start-day 1) ; 设置星期一为每周的第一天
(setq mark-diary-entries-in-calendar t) ; 标记calendar上有diary的日期
(setq mark-holidays-in-calendar nil) ; 为了突出有diary的日期，calendar上不标记节日
(setq view-calendar-holidays-initially nil) ; 打开calendar的时候不显示一堆节日

;; 去掉不关心的节日，设定自己在意的节日，在 calendar 上用 h 显示节日
(setq christian-holidays nil)
(setq hebrew-holidays nil)
(setq islamic-holidays nil)
(setq solar-holidays nil)
(setq general-holidays '((holiday-fixed 1 1 "元旦")
			 (holiday-fixed 2 14 "情人节")
			 (holiday-fixed 3 14 "白色情人节")
			 (holiday-fixed 4 1 "愚人节")
			 (holiday-fixed 5 1 "劳动节")
			 (holiday-float 5 0 2 "母亲节")
			 (holiday-fixed 6 1 "儿童节")
			 (holiday-float 6 0 3 "父亲节")
			 (holiday-fixed 7 1 "建党节")
			 (holiday-fixed 8 1 "建军节")
			 (holiday-fixed 9 10 "教师节")
			 (holiday-fixed 10 1 "国庆节")
			 (holiday-fixed 12 25 "圣诞节")))

;;Calendar模式支持各种方式来更改当前日期
;;（这里的“前”是指还没有到来的那一天，“后”是指已经过去的日子）
;; q 退出calendar模式
;; C-f 让当前日期向前一天
;; C-b 让当前日期向后一天
;; C-n 让当前日期向前一周
;; C-p 让当前日期向后一周
;; M-} 让当前日期向前一个月
;; M-{ 让当前日期向后一个月
;; C-x ] 让当前日期向前一年
;; C-x [ 让当前日期向后一年
;; C-a 移动到当前周的第一天
;; C-e 移动到当前周的最后一天
;; M-a 移动到当前月的第一天
;; M-e 多动到当前月的最后一天
;; M-< 移动到当前年的第一天
;; M-> 移动到当前年的最后一天

;;Calendar模式支持移动多种移动到特珠日期的方式
;; g d 移动到一个特别的日期
;; o 使某个特殊的月分作为中间的月分
;; . 移动到当天的日期
;; p d 显示某一天在一年中的位置，也显示本年度还有多少天。
;; C-c C-l 刷新Calendar窗口

;; Calendar支持生成LATEX代码。
;; t m 按月生成日历
;; t M 按月生成一个美化的日历
;; t d 按当天日期生成一个当天日历
;; t w 1 在一页上生成这个周的日历
;; t w 2 在两页上生成这个周的日历
;; t w 3 生成一个ISO-SYTLE风格的当前周日历
;; t w 4 生成一个从周一开始的当前周日历
;; t y 生成当前年的日历

;;EMACS Calendar支持配置节日：
;; h 显示当前的节日
;; x 定义当天为某个节日
;; u 取消当天已被定义的节日
;; e 显示所有这前后共三个月的节日。
;; M-x holiday 在另外的窗口的显示这前后三个月的节日。


;; 另外，还有一些特殊的，有意思的命令：
;; S 显示当天的日出日落时间(是大写的S)
;; p C 显示农历可以使用
;; g C 使用农历移动日期可以使用


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 日历设置结束 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 设置日记 ;;;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;

;(setq diary-file "~/diary");; 默认的日记文件
;(setq diary-mail-addr "getmails@163.com")
;(add-hook 'diary-hook 'appt-make-list)
;;当你创建了一个'~/diary'文件，你就可以使用calendar去查看里面的内容。你可以查看当天的事件，相关命令如下 ：
;; d 显示被选中的日期的所有事件
;; s 显示所有事件，包括过期的，未到期的等等

;; 创建一个事件的样例：
;; 02/11/1989
;; Bill B. visits Princeton today
;; 2pm Cognitive Studies Committee meeting
;; 2:30-5:30 Liz at Lawrenceville
;; 4:00pm Dentist appt
;; 7:30pm Dinner at George's
;; 8:00-10:00pm concert

;; 创建事件的命令：
;; i d 为当天日期添加一个事件
;; i w 为当天周创建一个周事件
;; i m 为当前月创建一个月事件
;; i y 为当前年创建一个年事件
;; i a 为当前日期创建一个周年纪念日
;; i c 创建一个循环的事件


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 设置日记结束 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 自定义lisp包设置 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;=======================五笔输入法设置======================
;; (add-to-list 'load-path "~/lisp/wubi/wubi")
;; (require 'wubi)
;; (register-input-method "chinese-wubi" "Chinese-GB" 'quail-use-package "wubi" "wubi")
;; (wubi-load-local-phrases)
;; (setq default-input-method "chinese-wubi")


;;这几句Lisp代码的作用是设置中文环境、注册五笔字型输入法。保存.emacs后请重新启动emacs，
;;使得上面的设置生效。现在您可以用快捷键C-\ （同时按住 Ctrl和反斜线键）唤出五笔字型输入法了。
;;在emacs的mode line上会出现“五笔字型”的字样。

;=======================五笔输入法设置结束===================


;======================= cscope 设置 =======================
;;使用 cscope 浏览源代码,这个xcscope是个改进版，为每一次查找的结果使用不同 buffer ，
;;这样就可以保存以前的结果。

;(add-to-list 'load-path "/opt/local/share/emacs/site-lisp/xcscope") ;; 将软件包所在的路径加到 EMACS 的 load-path
;(require 'xcscope) ;; 加载相应的软件

;; C-c s a 设定初始化的目录，一般是你代码的根目录
;; C-s s I 对目录中的相关文件建立列表并进行索引
;; C-c s s 序找符号
;; C-c s g 寻找全局的定义
;; C-c s c 看看指定函数被哪些函数所调用
;; C-c s C 看看指定函数调用了哪些函数
;; C-c s e 寻找正则表达式
;; C-c s f 寻找文件
;; C-c s i 看看指定的文件被哪些文件include


;===================== cscope 设置结束 ======================

;======================= wb-line-number设置 ==================
;;增加一个显示行号的buffer
;(add-to-list 'load-path "~/lisp/wb-line-number")
;(require 'wb-line-number)
;(wb-line-number-enable)
;====================== wb-line-number设置结束 ================

;======================= setnu设置 ============================
;;再增加一个显示行号的功能
(add-to-list 'load-path "/opt/local/share/emacs/site-lisp/setnu")
(require 'setnu)
(global-set-key [f2] (quote setnu-mode))

;======================= setnu设置结束 ＝＝＝＝=================


;====================== rect-mark设置 =========================
;; 按下shift拖拽鼠标即可选择矩形区域
;; Support for marking a rectangle of text with highlighting.
(add-to-list 'load-path "/opt/local/share/emacs/site-lisp/rect-mark")
(require 'rect-mark)
(define-key ctl-x-map "r\C-@" 'rm-set-mark)
(define-key ctl-x-map [?r ?\C-\ ] 'rm-set-mark)
(define-key ctl-x-map "r\C-x" 'rm-exchange-point-and-mark)
(define-key ctl-x-map "r\C-w" 'rm-kill-region)
(define-key ctl-x-map "r\M-w" 'rm-kill-ring-save)
(define-key global-map [S-down-mouse-1] 'rm-mouse-drag-region)
(autoload 'rm-set-mark "rect-mark"
	  "Set mark for rectangle." t)
(autoload 'rm-exchange-point-and-mark "rect-mark"
	  "Exchange point and mark for rectangle." t)
(autoload 'rm-kill-region "rect-mark"
	  "Kill a rectangular region and save it in the kill ring." t)
(autoload 'rm-kill-ring-save "rect-mark"
	  "Copy a rectangular region to the kill ring." t)
(autoload 'rm-mouse-drag-region "rect-mark"
	  "Drag out a rectangular region with the mouse." t)

;; Use this section in your "~/.emacs" to modify picture mode so that
;; it automatically uses the rect-mark equivalents of many commands.

;; One vision of a better picture mode.
(add-hook 'picture-mode-hook 'rm-example-picture-mode-bindings)
(autoload 'rm-example-picture-mode-bindings "rect-mark"
	  "Example rect-mark key and mouse bindings for picture mode.")

;===================== rect-mark设置结束 =========================

;===================== info文件设置 ==============================
;;Info 的菜单是按 Info-directory-list 的顺序列出的，而 Info-directory-list 是在启动 info 时
;;用Info-default-directory-list 来初始的。所以要添加 Info 目录是要设置 Info-default-directory-list。
;;在添加的 Info 目录中，创建一个叫 dir 的文件（其实所有 Info-directory-list 里有一个文件就行了，
;;在 ${emacs}/info 文件夹下有这个文件，修改这个也可以）。

;(add-to-list 'Info-default-directory-list "~/lisp/info/")

;; n：跳转到该节点的下一个节点； 
;; p：跳转到该节点的上一个节点；
;; m: 指定菜单名而选择另外一个节点；
;; f：进入交叉引用主题；
;; l：进入该窗口中的最后一个节点；
;; TAB：跳转到该窗口的下一个超文本链接；
;; RET：进入光标处的超文本链接；
;; u：转到上一级主题；
;; d：回到 info 的初始节点目录；
;; h：调出 info 教程；
;; q：退出 info。

;=================== info文件设置结束 ============================


;===================== AUCTeX设置 =================================
;(load "~/lisp/auctex/site-lisp/auctex.el" nil t t)
;(load "~/lisp/auctex/site-lisp/preview-latex.el" nil t t)
;(setq TeX-auto-save t)
;(setq TeX-parse-self t)
;(setq-default TeX-master nil)
;(add-hook 'LaTeX-mode-hook #'LaTeX-install-toolbar)
;(add-hook 'LaTeX-mode-hook 'turn-on-auto-fill)
;(add-hook 'LaTeX-mode-hook 'turn-on-reftex)

;===================== AUCTeX设置结束 =============================


;===================== 文件头header设置 ===========================
;;当我们保存文件的时候,有很多信息可以自动更新.如何自动更新信息, 更新那些信息,
;也是可以完全自己配置. 包括文件名称,最后一次修改时间,文件保存次数,最后一次修改的作者等等.
;;可以用 M-x make-header 自动生成文件头信息.
;(add-to-list 'load-path "/opt/local/share/emacs/site-lisp/header2")
;(require 'header2)
;(setq make-header-hooks '(header-mode-line
;			   header-blank
;			   header-file-name
;			   header-blank
;			   header-copyright
;			   header-blank
;			   header-author
;			   header-creation-date
;			   header-modification-author
;			   header-modification-date
;			   header-update-count
;			   header-blank
;			   header-history
;			   header-blank
;			   ))
;(setq header-copyright-notice "Rob's masterpiece" )
;(make-local-variable 'user-full-name)
;(make-local-variable 'user-mail-address)

;===================== 文件头header设置结束 ==========================


;===================== template设置 =================================
;(add-to-list 'load-path "~/lisp/template")
;(require 'template)
;(template-initialize)

;===================== template设置结束===============================

;; 加入标签功能
;;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;(require 'tabbar)
;(require 'tabbar-extension)
;(tabbar-mode)
;(global-set-key (kbd "C-,") 'tabbar-backward)
;(global-set-key (kbd "C-.") 'tabbar-forward)
;(global-set-key (kbd "C-=") 'tabbar-backward-group)
;(global-set-key (kbd "C--") 'tabbar-forward-group)


;; 高亮风格，color-theme插件
;;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
(require 'color-theme)
(setq theme-default 'color-theme-classic)
(color-theme-classic)

;; 高亮显示代码
;;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))
(autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t)
(autoload 'php-mode "php-mode" "PHP editing mode." t)
(setq auto-mode-alist (append (list '("\\.php$" . php-mode)) auto-mode-alist))
(add-hook 'lisp-mode-hook (lambda () (local-set-key (kbd "RET") 'newline-and-indent)))
(add-hook 'emacs-lisp-mode-hook (lambda () (local-set-key (kbd "RET") 'newline-and-indent)))

;; Shell mode
;;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
(setq ansi-color-names-vector ; better contrast colors
  ["black" "red4" "green4" "yellow4"
   "blue3" "magenta4" "cyan4" "white"])
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
;; Make the prompt read only
(setq comint-prompt-read-only t)

;; shell,gdb退出后，自动关闭该buffer
;;******************************************************************
(add-hook 'shell-mode-hook 'mode-hook-func)
(add-hook 'gdb-mode-hook 'mode-hook-func)
(defun mode-hook-func ()
  (set-process-sentinel (get-buffer-process (current-buffer))
			#'kill-buffer-on-exit))
(defun kill-buffer-on-exit (process state)
  (message "%s" state)
  (if (or
	(string-match "exited abnormally with code.*" state)
	(string-match "finished" state))
    (kill-buffer (current-buffer))))


;===================== cedet设置 =====================================

(add-to-list 'load-path "/opt/local/share/emacs/site-lisp/speedbar")
(add-to-list 'load-path "/opt/local/share/emacs/site-lisp/eieio")
(add-to-list 'load-path "/opt/local/share/emacs/site-lisp/semantic")
(add-to-list 'load-path "/opt/local/share/emacs/site-lisp/common")
(require 'cedet)

;; 加入cedet插件
;;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;(add-hook 'texinfo-mode-hook (lambda () (require 'sb-texinfo)))
(load-file "/opt/local/share/emacs/site-lisp/speedbar/speedbar.el")
;(load-file "/opt/local/share/emacs/site-lisp/common/cedet.el")
(semantic-load-enable-code-helpers)
(semantic-load-enable-guady-code-helpers)
(semantic-load-enable-excessive-code-helpers)
(autoload 'speedbar-frame-mode "speedbar" "Popup a speedbar frame" t)
(autoload 'speedbar-get-focus "speedbar" "Jump to speedbar frame" t)
(define-key-after (lookup-key global-map [menu-bar tools])
		  [speedbar]
		  '("Speedbar" . speedbar-frame-mode)
		  [calendar])
(setq semanticdb-search-system-databases t)
;; make all the 'semantic.cache' files go somewhere sane
(setq semanticdb-default-save-directory "~/.emacs-meta/semantic.cache/")

;; ECB设置
;;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;(add-to-list 'load-path "/opt/local/share/emacs/site-lisp/ecb")
(require 'ecb)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-auto-activate t)
 '(ecb-layout-name "left14")
 '(ecb-layout-window-sizes (quote (("left2" (0.20 . 0.80) (0.25 . 0.25)))))
 '(ecb-options-version "2.40")
 '(ecb-source-path (quote (("/" "/"))))
 '(ecb-tip-of-the-day nil)
 '(ecb-windows-height 0.5)
 '(ecb-windows-width 0.25)
 '(global-semantic-idle-scheduler-mode nil nil (semantic-idle))
 '(global-semantic-idle-summary-mode nil nil (semantic-idle))
 '(semantic-idle-scheduler-idle-time -1))

;; Ecb的操作:
;; C-c . g d 目录列表窗口
;; C-c . g s 源码窗口
;; C-c . g m 方法和变量窗口
;; C-c . g h 历史窗口
;; C-c . g l 最后选择过的编辑窗口
;; C-c . g 1 编辑窗口1
;; C-c . g n 编辑窗口n
;; C-c . l c 选择版面
;; C-c . l r 重画版面
;; C-c . l t 拴牢版面(锁定版面)
;; C-c . l w 拴牢可见的ecb窗口
;; C-c . \ 拴牢编绎窗口

;; 其中l为小写字母(L),大家别看错!!

;======================cedet设置结束==================================


;;;;;;;;;;;;;;;;;;;;;;;;;; 自定义lisp包设置结束 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;===================== GNUS设置 =================================
;(setq gnus-select-method '(nntp "news.yaako.com"))
;(setq gnus-default-subscribed-newsgroups
;      '( "cn.comp.os.linux")) ;;

;; (add-to-list 'gnus-secondary-select-methods '(nntp "news.yourSecondProvider.net"))
;; (add-to-list 'gnus-secondary-select-methods '(nntp "news.yourThirdProvider.net"))
;;想让 Gnus 在多个的服务器上取新闻


;;中文相关
(set-language-environment 'Chinese-GB)
(setq gnus-default-charset 'chinese-iso-8bit
      gnus-group-name-charset-group-alist '((".*" . chinese-iso-8bit))
      gnus-summary-show-article-charset-alist
      '((1 . chinese-iso-8bit)
	(2 . gbk)
	(3 . big5)
	(4 . utf-8))
      gnus-newsgroup-ignored-charsets
      '(unknown-8bit x-unknown iso-8859-1))


;(setq mail-sources
;      '((pop :server "pop.gmail.com" ;; 在这里设置pop3服务器
;	     :user "robbie.cao" ;; 用户名
;	     :port "995"
;	     :password "xxxxxxx"))) ;; 密码
;(setq gnus-secondary-select-methods '((nnfolder "")))
;
;(setq user-full-name "Robbie Cao") ;; 外发的邮件采用这个名字
;(setq user-mail-address "robbie.cao@gmail.com") ;;外发的邮件采用这个地址
;(setq smtpmail-auth-credentials
;      '(("smtp.gmail.com" ;; SMTP服务器
;	 587
;	 "robbie.cao" ;; 用户名
;	 "XXXXXX"))) ;; 密码
;(setq smtpmail-default-smtp-server "smtp.gmail.com")
;(setq smtpmail-smtp-server "smtp.gmail.com")
;(setq message-send-mail-function 'smtpmail-send-it)
;
;(setq nnmail-expiry-wait 3);;Gnus 默认的保质期是7天，如果你觉得时间不合适，可以自己设置
;
;(add-hook 'gnus-article-prepare-hook
;	  (lambda ()
;	    (setq fill-column 60)
;	    (gnus-article-fill-long-lines)))
;;让gnus把这种邮件排版整齐后再显示给我们看
;
;(add-hook 'gnus-article-prepare-hook 'gnus-article-date-local)
;;将邮件的发出时间转换为本地时间
;
;(gnus-add-configuration '(article
;			   (vertical 1.0
;				     (summary .4 point)
;				     (article 1.0))))
;; 改变阅读新闻时窗口的布局，窗口划分为上4下6（比例）
;
;(eval-after-load "mm-decode"
;		 '(progn
;		    (add-to-list 'mm-discouraged-alternatives "text/html")
;		    (add-to-list 'mm-discouraged-alternatives "text/richtext")))
;另外，有些用web方式发出的邮件里有html，加入下面的设置，只看其中的
;plain text部分：
;
;(setq gnus-thread-sort-functions
;      '(
;	(not gnus-thread-sort-by-date)
;	(not gnus-thread-sort-by-number)
;	))
;;排序
;
;(add-hook 'gnus-group-mode-hook 'gnus-topic-mode)
;; 有时订阅了很多新闻组，堆在一起不好管理。这个功能可以创建目录来分层管理
;
;(setq gnus-read-newsrc-file nil gnus-save-newsrc-file nil)
;
;======================== GNUS设置结束 ===============================

;;=========================== 方便编程操作的设置=====================================

(setq compile-command "make")
;;emacs的默认compile命令是调用make -k，我把它改成了make。你也可以把它改成其他的，比如gcc之类的.

;;把c语言风格设置为k&r风格
(add-hook 'c-mode-hook
	  '(lambda ()
	     (c-set-style "k&r")))

;;把C++语言风格设置为stroustrup风格
(add-hook 'c++-mode-hook
	  '(lambda()
	     (c-set-style "stroustrup")))

;========================================================================

(load-library "hideshow")
(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'c++-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook 'hs-minor-mode)
(add-hook 'perl-mode-hook 'hs-minor-mode)
(add-hook 'php-mode-hook 'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
;;能把一个代码块缩起来，需要的时候再展开
;; M-x hs-minor-mode
;; C-c @ ESC C-s show all
;; C-c @ ESC C-h hide all
;; C-c @ C-s show block
;; C-c @ C-h hide block
;; C-c @ C-c toggle hide/show

;========================================================================

(defun my-c-mode-auto-pair ()
  (interactive)
  (make-local-variable 'skeleton-pair-alist)
  (setq skeleton-pair-alist '(
			      (?` ?` _ "''")
			      (?\( ? _ " )")
			      (?\[ ? _ " ]")
			      (?{ \n > _ \n ?} >)))
  (setq skeleton-pair t)
  (local-set-key (kbd "(") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "{") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "`") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "[") 'skeleton-pair-insert-maybe))
(add-hook 'c-mode-hook 'my-c-mode-auto-pair)
(add-hook 'c++-mode-hook 'my-c-mode-auto-pair)
;;输入左边的括号，就会自动补全右边的部分.包括(), "", [] , {} , 等等。

;=========================================================================
(setq semantic-load-turn-everything-on t)
;(add-hook 'semantic-init-hooks 'semantic-idle-completions-mode)

(setq semanticdb-project-roots
      (list
	(expand-file-name "/")))
;;配置Semantic的检索范围

(setq semanticdb-default-save-directory "~/")
;;设置semantic.cache路径

(global-set-key [(meta ?/)] 'hippie-expand)
;;M-/ 绑定到 hippie-expand

(autoload 'senator-try-expand-semantic "senator")
(setq hippie-expand-try-functions-list
      '(senator-try-expand-semantic ;优先调用了senator的分析结果
	 try-expand-dabbrev ;当前的buffer补全
	 try-expand-dabbrev-visible ;别的可见的窗口里寻找补全
	 try-expand-dabbrev-all-buffers ;所有打开的buffer
	 try-expand-dabbrev-from-kill
	 try-complete-file-name-partially
	 try-complete-file-name
	 try-expand-all-abbrevs
	 try-expand-list
	 try-expand-line
	 try-complete-lisp-symbol-partially
	 try-complete-lisp-symbol))
;设置 hippie-expand 的补全方式。它是一个优先列表， hippie-expand 会优先使用表最前面的函数来补全。

;=========================================================================


;==========================================================================

;;========================== 方便编程操作设置结束====================================
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )


;; 普通开关设置
;;******************************************************************
(global-font-lock-mode t)            ; 语法高亮
(global-font-lock-mode 1)            ; 语法高亮
(auto-image-file-mode t)             ; 打开图片显示功能
(column-number-mode t)               ; 显示列号
(setq-default fill-column 81)        ; 81列显示提示线
(setq auto-fill-mode 1)
(show-paren-mode t)                  ; 显示括号匹配
;(menu-bar-mode -1)                  ; 隐藏菜单栏
(tool-bar-mode -1)                   ; 隐藏工具栏
;(scroll-bar-mode -1)                ; 隐藏滚动条，因为可以使用鼠标滚轮了
;(mouse-avoidance-mode 'animate)      ; 光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线
(transient-mark-mode t)              ; 允许临时设置标记，See C-h f transient-mark-mode
;(setq mouse-yank-at-point t)         ; 支持中键粘贴
(setq inhibit-startup-message t)     ; 关闭启动时闪屏
(setq visible-bell t)                ; 关闭出错时的提示声
(setq major-mode 'text-mode) ; 一打开就起用 text 模式
(setq display-time-mode 1)           ; 显示时间，格式如下：
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq x-select-enable-clipboard t)   ; 支持emacs和外部程序的粘贴
(setq frame-title-format '("" buffer-file-name )) ; 在标题栏提示你目前在什么位置
(setq default-fill-column 80)        ; 默认显示 80列就换行
(setq load-home-init-file t)
;(fset 'yes-or-no-p 'y-or-n-p)        ; 以 y/n代表 yes/no
(setq-default tab-width 8)           ; Tab缩进2个字符
(setq-default indent-tabs-mode nil)
(setq-default make-backup-files nil) ; 默认不要生成临时文件
(custom-set-variables 
  '(ecb-options-version "2.40")
  '(size-indication-mode t)
  '(scroll-bar-mode (quote right)))

;; Reload .emacs on the fly
;;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
(defun reload-dot-emacs()
  (interactive)
  (if(bufferp (get-file-buffer ".emacs"))
    (save-buffer(get-buffer ".emacs")))
  (load-file "~/.emacs")
  (message ".emacs reloaded successfully"))
;; Place all backup copies of files in a common location
;;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
(defconst use-backup-dir t)
(setq backup-directory-alist (quote ((".*" . "~/.emacs-meta/backups/")))
      version-control t                ; Use version numbers for backups
      kept-new-versions 16             ; Number of newest versions to keep
      kept-old-versions 2              ; Number of oldest versions to keep
      delete-old-versions t            ; Ask to delete excess backup versions?
      backup-by-copying-when-linked t) ; Copy linked files, don't rename.


;; Mac OSX customizations
;;******************************************************************
(normal-erase-is-backspace-mode t)

