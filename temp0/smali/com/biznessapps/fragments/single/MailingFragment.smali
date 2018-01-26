.class public Lcom/biznessapps/fragments/single/MailingFragment;
.super Lcom/biznessapps/fragments/CommonFragment;
.source "MailingFragment.java"


# instance fields
.field private joinButton:Landroid/widget/Button;

.field private layout:Landroid/view/ViewGroup;

.field private mailingListInfo:Lcom/biznessapps/model/MailingListEntity;

.field private tabId:Ljava/lang/String;

.field private userDescription:Landroid/widget/TextView;

.field private userEmailText:Landroid/widget/EditText;

.field private userNameText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/single/MailingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/MailingFragment;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/MailingFragment;->calculate()V

    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/fragments/single/MailingFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/MailingFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment;->joinButton:Landroid/widget/Button;

    return-object v0
.end method

.method private calculate()V
    .locals 7

    .prologue
    .line 113
    iget-object v4, p0, Lcom/biznessapps/fragments/single/MailingFragment;->userNameText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "userName":Ljava/lang/String;
    iget-object v4, p0, Lcom/biznessapps/fragments/single/MailingFragment;->userEmailText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "userEmail":Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/MailingFragment;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "TAB_SPECIAL_ID"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "tabParam":Ljava/lang/String;
    new-instance v0, Lcom/biznessapps/fragments/single/MailingFragment$3;

    invoke-direct {v0, p0}, Lcom/biznessapps/fragments/single/MailingFragment$3;-><init>(Lcom/biznessapps/fragments/single/MailingFragment;)V

    .line 138
    .local v0, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/MailingFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v2, v4, v1}, Lcom/biznessapps/api/AppHttpUtils;->addToMailingList(Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .end local v0    # "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    .end local v1    # "tabParam":Ljava/lang/String;
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/MailingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$string;->field_not_filled_message:I

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment;->joinButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fragments/single/MailingFragment$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/single/MailingFragment$1;-><init>(Lcom/biznessapps/fragments/single/MailingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment;->userEmailText:Landroid/widget/EditText;

    new-instance v1, Lcom/biznessapps/fragments/single/MailingFragment$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/single/MailingFragment$2;-><init>(Lcom/biznessapps/fragments/single/MailingFragment;)V

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getOnEnterKeyListener(Ljava/lang/Runnable;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 110
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->user_name_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment;->userNameText:Landroid/widget/EditText;

    .line 90
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->user_email_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment;->userEmailText:Landroid/widget/EditText;

    .line 91
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->mailing_list_description:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment;->userDescription:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->join_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment;->joinButton:Landroid/widget/Button;

    .line 93
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment;->joinButton:Landroid/widget/Button;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setWidth(I)V

    .line 94
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment;->joinButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/single/MailingFragment;->setCustomButtonStyle(Landroid/widget/Button;)V

    .line 95
    return-void
.end method

.method private setBackgrounds(Landroid/app/Activity;)V
    .locals 3
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment;->mailingListInfo:Lcom/biznessapps/model/MailingListEntity;

    invoke-virtual {v0}, Lcom/biznessapps/model/MailingListEntity;->getImage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment;->bitmapUrl:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment;->bitmapUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/MailingFragment;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/single/MailingFragment;->bitmapUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/fragments/single/MailingFragment;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/utils/ImageManager;->downloadBgUrl(Ljava/lang/String;Landroid/view/View;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment;->mailingListInfo:Lcom/biznessapps/model/MailingListEntity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment;->mailingListInfo:Lcom/biznessapps/model/MailingListEntity;

    invoke-virtual {v0}, Lcom/biznessapps/model/MailingListEntity;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment;->userDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/fragments/single/MailingFragment;->mailingListInfo:Lcom/biznessapps/model/MailingListEntity;

    invoke-virtual {v1}, Lcom/biznessapps/model/MailingListEntity;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_1
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/MailingFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    const-string v1, "MAILING_INFO_PROPERTY"

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/MailingListEntity;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment;->mailingListInfo:Lcom/biznessapps/model/MailingListEntity;

    .line 75
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment;->mailingListInfo:Lcom/biznessapps/model/MailingListEntity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 58
    const-string v0, "http://www.biznessapps.com/iphone/mailing_list.php?app_code=%s&version=4&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/MailingFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/fragments/single/MailingFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    sget v0, Lcom/biznessapps/layout/R$layout;->mailing_list_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment;->root:Landroid/view/ViewGroup;

    .line 44
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->mailing_list_root:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment;->layout:Landroid/view/ViewGroup;

    .line 45
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/MailingFragment;->initViews()V

    .line 46
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/MailingFragment;->initListeners()V

    .line 47
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/MailingFragment;->loadData()V

    .line 48
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment;->tabId:Ljava/lang/String;

    .line 54
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {p1}, Lcom/biznessapps/utils/JsonParserUtils;->parseMailingList(Ljava/lang/String;)Lcom/biznessapps/model/MailingListEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/MailingFragment;->mailingListInfo:Lcom/biznessapps/model/MailingListEntity;

    .line 64
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/MailingFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    const-string v1, "MAILING_INFO_PROPERTY"

    iget-object v2, p0, Lcom/biznessapps/fragments/single/MailingFragment;->mailingListInfo:Lcom/biznessapps/model/MailingListEntity;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/single/MailingFragment;->setBackgrounds(Landroid/app/Activity;)V

    .line 70
    return-void
.end method
