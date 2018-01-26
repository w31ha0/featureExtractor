.class public Lcom/biznessapps/fragments/fanwall/FanWallFragment;
.super Lcom/biznessapps/fragments/CommonFragment;
.source "FanWallFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomLogoutListener;,
        Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener;
    }
.end annotation


# static fields
.field protected static final PERMISSIONS:[Ljava/lang/String;

.field protected static info:Lcom/biznessapps/model/FanWallItem;


# instance fields
.field protected accountsContentView:Landroid/view/ViewGroup;

.field protected addViaFacebook:Landroid/widget/Button;

.field protected addViaTwitter:Landroid/widget/Button;

.field protected cancelAccountsButton:Landroid/widget/Button;

.field protected chooseAccountsButton:Landroid/widget/ImageButton;

.field protected commentParentId:Ljava/lang/String;

.field protected commentsListView:Landroid/widget/ListView;

.field protected loadDataTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected logoutFacebookButton:Lcom/biznessapps/facebook/LoginButton;

.field protected mFacebook:Lcom/facebook/android/Facebook;

.field private needToReload:Z

.field protected rootView:Landroid/view/ViewGroup;

.field protected tabId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "publish_stream"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "read_stream"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "offline_access"

    aput-object v2, v0, v1

    sput-object v0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;-><init>()V

    .line 327
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/fanwall/FanWallFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/fanwall/FanWallFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->openLoginAccountsDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/fragments/fanwall/FanWallFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/fanwall/FanWallFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->closeLoginAccountsDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/fragments/fanwall/FanWallFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/fanwall/FanWallFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->addComment(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/biznessapps/fragments/fanwall/FanWallFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/fanwall/FanWallFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->openTwitterLoginView()V

    return-void
.end method

.method private addComment(Z)V
    .locals 5
    .param p1, "useFacebookCred"    # Z

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    .line 202
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 203
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "ADD_COMMENT_VIA_FACEBOOK"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 205
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TAB_SPECIAL_ID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "tabParam":Ljava/lang/String;
    const-string v3, "FAN_WALL_COMMENT_PARENT_ID"

    iget-object v4, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->commentParentId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v3, "TAB_FRAGMENT"

    const-string v4, "FAN_ADD_COMMENT_FRAGMENT"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 211
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "tabParam":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private closeLoginAccountsDialog()V
    .locals 3

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$anim;->hide_tell_friends_dialog:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 270
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->accountsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 271
    new-instance v1, Lcom/biznessapps/utils/ViewUtils$HideAnimationListener;

    iget-object v2, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->accountsContentView:Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Lcom/biznessapps/utils/ViewUtils$HideAnimationListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 272
    return-void
.end method

.method private getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/biznessapps/fragments/fanwall/FanWallFragment$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment$1;-><init>(Lcom/biznessapps/fragments/fanwall/FanWallFragment;)V

    return-object v0
.end method

.method private openLoginAccountsDialog()V
    .locals 3

    .prologue
    .line 260
    iget-object v1, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->accountsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 261
    iget-object v1, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->accountsContentView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 262
    invoke-virtual {p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$anim;->show_tell_friends_dialog:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 264
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->accountsContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 266
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method private openTwitterLoginView()V
    .locals 3

    .prologue
    .line 195
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "TWITTER_LOGIN_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 198
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 226
    invoke-virtual {p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FAN_WALL_INFO_PROPERTY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->commentParentId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/model/FanWallItem;

    sput-object v1, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->info:Lcom/biznessapps/model/FanWallItem;

    .line 227
    sget-object v1, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->info:Lcom/biznessapps/model/FanWallItem;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->needToReload:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 228
    .local v0, "canUseCache":Z
    :goto_0
    iput-boolean v2, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->needToReload:Z

    .line 229
    return v0

    .end local v0    # "canUseCache":Z
    :cond_0
    move v0, v2

    .line 227
    goto :goto_0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 221
    const-string v0, "http://www.biznessapps.com/iphone/fan_wall.php?app_code=%s&parent_id=%s&version=4&tab_id=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->commentParentId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initListeners()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->chooseAccountsButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/biznessapps/fragments/fanwall/FanWallFragment$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment$2;-><init>(Lcom/biznessapps/fragments/fanwall/FanWallFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->cancelAccountsButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fragments/fanwall/FanWallFragment$3;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment$3;-><init>(Lcom/biznessapps/fragments/fanwall/FanWallFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->addViaTwitter:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fragments/fanwall/FanWallFragment$4;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment$4;-><init>(Lcom/biznessapps/fragments/fanwall/FanWallFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->addViaFacebook:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fragments/fanwall/FanWallFragment$5;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment$5;-><init>(Lcom/biznessapps/fragments/fanwall/FanWallFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    return-void
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 109
    sget v0, Lcom/biznessapps/layout/R$id;->choose_accounts_content:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->accountsContentView:Landroid/view/ViewGroup;

    .line 110
    sget v0, Lcom/biznessapps/layout/R$id;->add_via_facebook_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->addViaFacebook:Landroid/widget/Button;

    .line 111
    sget v0, Lcom/biznessapps/layout/R$id;->add_via_twitter_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->addViaTwitter:Landroid/widget/Button;

    .line 112
    sget v0, Lcom/biznessapps/layout/R$id;->choose_login_account:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->chooseAccountsButton:Landroid/widget/ImageButton;

    .line 113
    sget v0, Lcom/biznessapps/layout/R$id;->cancel_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->cancelAccountsButton:Landroid/widget/Button;

    .line 114
    sget v0, Lcom/biznessapps/layout/R$id;->facebook_login_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/facebook/LoginButton;

    iput-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->logoutFacebookButton:Lcom/biznessapps/facebook/LoginButton;

    .line 115
    sget v0, Lcom/biznessapps/layout/R$id;->comments_list_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->commentsListView:Landroid/widget/ListView;

    .line 116
    sget v0, Lcom/biznessapps/layout/R$id;->fan_wall_root_layout:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->rootView:Landroid/view/ViewGroup;

    .line 117
    new-instance v0, Lcom/facebook/android/Facebook;

    invoke-direct {v0}, Lcom/facebook/android/Facebook;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->mFacebook:Lcom/facebook/android/Facebook;

    .line 118
    iget-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->mFacebook:Lcom/facebook/android/Facebook;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/facebook/SessionStore;->restore(Lcom/facebook/android/Facebook;Landroid/content/Context;)Z

    .line 119
    new-instance v0, Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener;

    invoke-direct {v0, p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener;-><init>(Lcom/biznessapps/fragments/fanwall/FanWallFragment;)V

    invoke-static {v0}, Lcom/biznessapps/facebook/SessionEvents;->addAuthListener(Lcom/biznessapps/facebook/SessionEvents$AuthListener;)V

    .line 120
    new-instance v0, Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomLogoutListener;

    invoke-direct {v0, p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomLogoutListener;-><init>(Lcom/biznessapps/fragments/fanwall/FanWallFragment;)V

    invoke-static {v0}, Lcom/biznessapps/facebook/SessionEvents;->addLogoutListener(Lcom/biznessapps/facebook/SessionEvents$LogoutListener;)V

    .line 121
    iget-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->logoutFacebookButton:Lcom/biznessapps/facebook/LoginButton;

    iget-object v1, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->mFacebook:Lcom/facebook/android/Facebook;

    sget-object v2, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/facebook/LoginButton;->init(Lcom/facebook/android/Facebook;[Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 94
    const/4 v0, 0x2

    if-ne v0, p2, :cond_0

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->addComment(Z)V

    .line 106
    :goto_0
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x3

    if-ne v0, p2, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->twitter_login_failure:I

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showShortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 98
    :cond_1
    const/4 v0, 0x4

    if-ne v0, p2, :cond_2

    .line 99
    iput-boolean v2, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->needToReload:Z

    .line 100
    invoke-virtual {p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->loadData()V

    goto :goto_0

    .line 101
    :cond_2
    const/4 v0, 0x5

    if-ne v0, p2, :cond_3

    .line 102
    invoke-virtual {p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->comment_adding_failure:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 104
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/fragments/CommonFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    sget v0, Lcom/biznessapps/layout/R$layout;->fan_wall_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->root:Landroid/view/ViewGroup;

    .line 86
    iget-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 87
    invoke-virtual {p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->loadData()V

    .line 88
    invoke-virtual {p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->initListeners()V

    .line 89
    iget-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected plugListView(Landroid/app/Activity;)V
    .locals 5
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 125
    sget-object v3, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->info:Lcom/biznessapps/model/FanWallItem;

    if-eqz v3, :cond_0

    .line 126
    sget-object v3, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->info:Lcom/biznessapps/model/FanWallItem;

    invoke-virtual {v3}, Lcom/biznessapps/model/FanWallItem;->getComments()Ljava/util/List;

    move-result-object v0

    .line 127
    .local v0, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/FanWallComment;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->commentParentId:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 129
    .local v2, "isParentAdapter":Z
    :goto_0
    new-instance v1, Lcom/biznessapps/layout/adapters/FallWallAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$layout;->fan_wall_item_layout:I

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/biznessapps/layout/adapters/FallWallAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZ)V

    .line 131
    .local v1, "ex":Lcom/biznessapps/layout/adapters/FallWallAdapter;
    iget-object v3, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->commentsListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    if-eqz v2, :cond_0

    .line 133
    iget-object v3, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->commentsListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 137
    .end local v0    # "comments":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/FanWallComment;>;"
    .end local v1    # "ex":Lcom/biznessapps/layout/adapters/FallWallAdapter;
    .end local v2    # "isParentAdapter":Z
    :cond_0
    return-void

    .line 128
    .restart local v0    # "comments":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/FanWallComment;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FAN_WALL_COMMENT_PARENT_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->commentParentId:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->tabId:Ljava/lang/String;

    .line 217
    return-void
.end method

.method protected setBackgrounds()V
    .locals 4

    .prologue
    .line 249
    sget-object v2, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->info:Lcom/biznessapps/model/FanWallItem;

    invoke-virtual {v2}, Lcom/biznessapps/model/FanWallItem;->getImage()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "bgUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v3}, Lcom/biznessapps/utils/ImageManager;->downloadBgUrl(Ljava/lang/String;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 5
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 234
    invoke-static {p1}, Lcom/biznessapps/utils/JsonParserUtils;->parseFanWallData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 235
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/FanWallItem;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/model/FanWallItem;

    sput-object v1, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->info:Lcom/biznessapps/model/FanWallItem;

    .line 237
    invoke-virtual {p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FAN_WALL_INFO_PROPERTY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->commentParentId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->info:Lcom/biznessapps/model/FanWallItem;

    invoke-virtual {v1, v3, v4}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 239
    :cond_0
    sget-object v1, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->info:Lcom/biznessapps/model/FanWallItem;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->setBackgrounds()V

    .line 245
    invoke-virtual {p0, p1}, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->plugListView(Landroid/app/Activity;)V

    .line 246
    return-void
.end method
