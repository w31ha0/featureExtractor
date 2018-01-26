.class public Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;
.super Lcom/biznessapps/fragments/CommonFragment;
.source "FanAddCommentsFragment.java"


# static fields
.field private static final hashFormat:Ljava/lang/String; = "fan713%s"


# instance fields
.field private cancelButton:Landroid/widget/Button;

.field private clearButton:Landroid/widget/Button;

.field private commentEditView:Landroid/widget/EditText;

.field private commentParentId:Ljava/lang/String;

.field private postButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->commentEditView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->postComment()V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->postButton:Landroid/widget/Button;

    return-object v0
.end method

.method private getMD5Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 138
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 139
    .local v4, "m":Ljava/security/MessageDigest;
    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 141
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 142
    .local v1, "digest":[B
    new-instance v0, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v0, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 143
    .local v0, "bigInt":Ljava/math/BigInteger;
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "hashtext":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x20

    if-ge v5, v6, :cond_0

    .line 146
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 149
    .end local v0    # "bigInt":Ljava/math/BigInteger;
    .end local v1    # "digest":[B
    .end local v3    # "hashtext":Ljava/lang/String;
    .end local v4    # "m":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v3
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->cancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment$1;-><init>(Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->clearButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment$2;-><init>(Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->postButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment$3;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment$3;-><init>(Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->commentEditView:Landroid/widget/EditText;

    new-instance v1, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment$4;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment$4;-><init>(Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 88
    return-void
.end method

.method private initViews(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    sget v0, Lcom/biznessapps/layout/R$id;->comment_edit_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->commentEditView:Landroid/widget/EditText;

    .line 52
    sget v0, Lcom/biznessapps/layout/R$id;->comments_cancel:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->cancelButton:Landroid/widget/Button;

    .line 53
    sget v0, Lcom/biznessapps/layout/R$id;->comments_clear:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->clearButton:Landroid/widget/Button;

    .line 54
    sget v0, Lcom/biznessapps/layout/R$id;->comments_post:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->postButton:Landroid/widget/Button;

    .line 55
    return-void
.end method

.method private postComment()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 91
    iget-object v9, p0, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->commentEditView:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, "comment":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v8

    .line 93
    .local v8, "appCode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "ADD_COMMENT_VIA_FACEBOOK"

    invoke-virtual {v9, v10, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 94
    .local v1, "useFacebookCred":Z
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/api/CachingManager;->getFacebookUserName()Ljava/lang/String;

    move-result-object v6

    .line 95
    .local v6, "userName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/api/CachingManager;->getTwitterUserName()Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "twitterId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/api/CachingManager;->getFacebookUID()Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "facebookId":Ljava/lang/String;
    const-string v10, "fan713%s"

    new-array v11, v13, [Ljava/lang/Object;

    if-eqz v1, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_1
    aput-object v9, v11, v14

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->getMD5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "hash":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "TAB_SPECIAL_ID"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "tabId":Ljava/lang/String;
    invoke-static {v7}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/biznessapps/layout/R$string;->comment_must_fill:I

    invoke-static {v9, v10, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 134
    :goto_2
    return-void

    .line 94
    .end local v2    # "hash":Ljava/lang/String;
    .end local v3    # "tabId":Ljava/lang/String;
    .end local v4    # "facebookId":Ljava/lang/String;
    .end local v5    # "twitterId":Ljava/lang/String;
    .end local v6    # "userName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/api/CachingManager;->getTwitterUserName()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 97
    .restart local v4    # "facebookId":Ljava/lang/String;
    .restart local v5    # "twitterId":Ljava/lang/String;
    .restart local v6    # "userName":Ljava/lang/String;
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 104
    .restart local v2    # "hash":Ljava/lang/String;
    .restart local v3    # "tabId":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    aput-object v2, v9, v14

    aput-object v6, v9, v13

    const/4 v10, 0x2

    aput-object v3, v9, v10

    const/4 v10, 0x3

    aput-object v8, v9, v10

    invoke-static {v9}, Lcom/biznessapps/utils/StringUtils;->checkTextFieldsOnEmpty([Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 105
    new-instance v0, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment$5;

    invoke-direct {v0, p0}, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment$5;-><init>(Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;)V

    .line 127
    .local v0, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->commentParentId:Ljava/lang/String;

    invoke-static/range {v0 .. v9}, Lcom/biznessapps/api/AppHttpUtils;->postComment(Lcom/biznessapps/api/AsyncCallback;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 130
    .end local v0    # "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {p0}, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/biznessapps/layout/R$string;->comment_adding_failure:I

    invoke-static {v9, v10, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 131
    invoke-virtual {p0}, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Lcom/biznessapps/activities/CommonFragmentActivity;->setResult(I)V

    .line 132
    invoke-virtual {p0}, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/activities/CommonFragmentActivity;->finish()V

    goto :goto_2
.end method


# virtual methods
.method protected hasTitleBar()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    sget v0, Lcom/biznessapps/layout/R$layout;->add_comments_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->root:Landroid/view/ViewGroup;

    .line 39
    iget-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->root:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 40
    invoke-direct {p0}, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->initListeners()V

    .line 41
    invoke-virtual {p0}, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "FAN_WALL_COMMENT_PARENT_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->commentParentId:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanAddCommentsFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method
