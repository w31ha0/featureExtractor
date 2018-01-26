.class public Lorg/acra/CrashReportDialog;
.super Landroid/app/Activity;
.source "CrashReportDialog.java"


# instance fields
.field mReportFileName:Ljava/lang/String;

.field private prefs:Landroid/content/SharedPreferences;

.field private userComment:Landroid/widget/EditText;

.field private userEmail:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    iput-object v0, p0, Lorg/acra/CrashReportDialog;->prefs:Landroid/content/SharedPreferences;

    .line 51
    iput-object v0, p0, Lorg/acra/CrashReportDialog;->userComment:Landroid/widget/EditText;

    .line 52
    iput-object v0, p0, Lorg/acra/CrashReportDialog;->userEmail:Landroid/widget/EditText;

    .line 53
    iput-object v0, p0, Lorg/acra/CrashReportDialog;->mReportFileName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/acra/CrashReportDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/acra/CrashReportDialog;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->userComment:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lorg/acra/CrashReportDialog;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lorg/acra/CrashReportDialog;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lorg/acra/CrashReportDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/acra/CrashReportDialog;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->userEmail:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected cancelNotification()V
    .locals 2

    .prologue
    .line 195
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lorg/acra/CrashReportDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 196
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/16 v1, 0x29a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 197
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "REPORT_FILE_NAME"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/acra/CrashReportDialog;->mReportFileName:Ljava/lang/String;

    .line 65
    sget-object v10, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Opening CrashReportDialog for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/acra/CrashReportDialog;->mReportFileName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v10, p0, Lorg/acra/CrashReportDialog;->mReportFileName:Ljava/lang/String;

    if-nez v10, :cond_0

    .line 67
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->finish()V

    .line 69
    :cond_0
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lorg/acra/CrashReportDialog;->requestWindowFeature(I)Z

    .line 71
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    .local v6, "root":Landroid/widget/LinearLayout;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 73
    const/16 v10, 0xa

    const/16 v11, 0xa

    const/16 v12, 0xa

    const/16 v13, 0xa

    invoke-virtual {v6, v10, v11, v12, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 74
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    new-instance v7, Landroid/widget/ScrollView;

    invoke-direct {v7, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 77
    .local v7, "scroll":Landroid/widget/ScrollView;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 81
    .local v8, "text":Landroid/widget/TextView;
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v10

    invoke-interface {v10}, Lorg/acra/annotation/ReportsCrashes;->resDialogText()I

    move-result v10

    invoke-virtual {p0, v10}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-virtual {v7, v8, v10, v11}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 85
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v10

    invoke-interface {v10}, Lorg/acra/annotation/ReportsCrashes;->resDialogCommentPrompt()I

    move-result v1

    .line 86
    .local v1, "commentPromptId":I
    if-eqz v1, :cond_1

    .line 87
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 88
    .local v3, "label":Landroid/widget/TextView;
    invoke-virtual {p0, v1}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v10

    const/16 v11, 0xa

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v12

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v13

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 91
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance v10, Landroid/widget/EditText;

    invoke-direct {v10, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lorg/acra/CrashReportDialog;->userComment:Landroid/widget/EditText;

    .line 95
    iget-object v10, p0, Lorg/acra/CrashReportDialog;->userComment:Landroid/widget/EditText;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setLines(I)V

    .line 97
    iget-object v10, p0, Lorg/acra/CrashReportDialog;->userComment:Landroid/widget/EditText;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    .end local v3    # "label":Landroid/widget/TextView;
    :cond_1
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v10

    invoke-interface {v10}, Lorg/acra/annotation/ReportsCrashes;->resDialogEmailPrompt()I

    move-result v2

    .line 103
    .local v2, "emailPromptId":I
    if-eqz v2, :cond_2

    .line 104
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 105
    .restart local v3    # "label":Landroid/widget/TextView;
    invoke-virtual {p0, v2}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v10

    const/16 v11, 0xa

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v12

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v13

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 108
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance v10, Landroid/widget/EditText;

    invoke-direct {v10, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lorg/acra/CrashReportDialog;->userEmail:Landroid/widget/EditText;

    .line 111
    iget-object v10, p0, Lorg/acra/CrashReportDialog;->userEmail:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->setSingleLine()V

    .line 112
    iget-object v10, p0, Lorg/acra/CrashReportDialog;->userEmail:Landroid/widget/EditText;

    const/16 v11, 0x21

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setInputType(I)V

    .line 114
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v10

    invoke-interface {v10}, Lorg/acra/annotation/ReportsCrashes;->sharedPreferencesName()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v11

    invoke-interface {v11}, Lorg/acra/annotation/ReportsCrashes;->sharedPreferencesMode()I

    move-result v11

    invoke-virtual {p0, v10, v11}, Lorg/acra/CrashReportDialog;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    iput-object v10, p0, Lorg/acra/CrashReportDialog;->prefs:Landroid/content/SharedPreferences;

    .line 116
    iget-object v10, p0, Lorg/acra/CrashReportDialog;->userEmail:Landroid/widget/EditText;

    iget-object v11, p0, Lorg/acra/CrashReportDialog;->prefs:Landroid/content/SharedPreferences;

    const-string v12, "acra.user.email"

    const-string v13, ""

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v10, p0, Lorg/acra/CrashReportDialog;->userEmail:Landroid/widget/EditText;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    .end local v3    # "label":Landroid/widget/TextView;
    :cond_2
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 122
    .local v0, "buttons":Landroid/widget/LinearLayout;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v10

    const/16 v11, 0xa

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v12

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v13

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 125
    new-instance v9, Landroid/widget/Button;

    invoke-direct {v9, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 126
    .local v9, "yes":Landroid/widget/Button;
    const v10, 0x1040013

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(I)V

    .line 127
    new-instance v10, Lorg/acra/CrashReportDialog$1;

    invoke-direct {v10, p0}, Lorg/acra/CrashReportDialog$1;-><init>(Lorg/acra/CrashReportDialog;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 166
    .local v4, "no":Landroid/widget/Button;
    const v10, 0x1040009

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setText(I)V

    .line 167
    new-instance v10, Lorg/acra/CrashReportDialog$2;

    invoke-direct {v10, p0}, Lorg/acra/CrashReportDialog$2;-><init>(Lorg/acra/CrashReportDialog;)V

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    invoke-virtual {p0, v6}, Lorg/acra/CrashReportDialog;->setContentView(Landroid/view/View;)V

    .line 181
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v10

    invoke-interface {v10}, Lorg/acra/annotation/ReportsCrashes;->resDialogTitle()I

    move-result v5

    .line 182
    .local v5, "resTitle":I
    if-eqz v5, :cond_3

    .line 183
    invoke-virtual {p0, v5}, Lorg/acra/CrashReportDialog;->setTitle(I)V

    .line 186
    :cond_3
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/4 v11, 0x3

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v12

    invoke-interface {v12}, Lorg/acra/annotation/ReportsCrashes;->resDialogIcon()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 188
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->cancelNotification()V

    .line 189
    return-void
.end method
