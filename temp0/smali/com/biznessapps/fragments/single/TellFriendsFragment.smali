.class public Lcom/biznessapps/fragments/single/TellFriendsFragment;
.super Lcom/biznessapps/fragments/CommonFragment;
.source "TellFriendsFragment.java"


# instance fields
.field private appInfo:Lcom/biznessapps/model/App;

.field private layout:Landroid/view/ViewGroup;

.field private tabId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/single/TellFriendsFragment;Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/TellFriendsFragment;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/single/TellFriendsFragment;->openFriendContent(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    .line 65
    iget-object v2, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->tell_friends_content:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 66
    .local v1, "tellFriendContent":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->tell_friend_button:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 67
    .local v0, "tellButton":Landroid/widget/Button;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 68
    new-instance v2, Lcom/biznessapps/fragments/single/TellFriendsFragment$1;

    invoke-direct {v2, p0, v1}, Lcom/biznessapps/fragments/single/TellFriendsFragment$1;-><init>(Lcom/biznessapps/fragments/single/TellFriendsFragment;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/single/TellFriendsFragment;->setCustomButtonStyle(Landroid/widget/Button;)V

    .line 75
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/TellFriendsFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/biznessapps/fragments/utils/TellFriendDelegate;->initTellFriends(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 76
    return-void
.end method

.method private openFriendContent(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "tellFriendContent"    # Landroid/view/ViewGroup;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 80
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 81
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/TellFriendsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$anim;->show_tell_friends_dialog:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 83
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 85
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method private setBackgrounds()V
    .locals 4

    .prologue
    .line 88
    iget-object v1, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->appInfo:Lcom/biznessapps/model/App;

    invoke-virtual {v1}, Lcom/biznessapps/model/App;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->bitmapUrl:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->bitmapUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/TellFriendsFragment;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->bitmapUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/biznessapps/utils/ImageManager;->downloadBgUrl(Ljava/lang/String;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/TellFriendsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    const-string v1, "APP_INFO_PROPERTY"

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/App;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->appInfo:Lcom/biznessapps/model/App;

    .line 56
    iget-object v0, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->appInfo:Lcom/biznessapps/model/App;

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
    .line 44
    const-string v0, "http://biznessapps.com/iphone/home.php?app_code=%s&version=4&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/TellFriendsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->tabId:Ljava/lang/String;

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
    .line 30
    sget v0, Lcom/biznessapps/layout/R$layout;->home_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->root:Landroid/view/ViewGroup;

    .line 31
    iget-object v0, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->home_layout_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->layout:Landroid/view/ViewGroup;

    .line 32
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/TellFriendsFragment;->initViews()V

    .line 33
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/TellFriendsFragment;->loadData()V

    .line 34
    iget-object v0, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->tabId:Ljava/lang/String;

    .line 40
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p1}, Lcom/biznessapps/utils/JsonParserUtils;->parseApp(Ljava/lang/String;)Lcom/biznessapps/model/App;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->appInfo:Lcom/biznessapps/model/App;

    .line 50
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/TellFriendsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    const-string v1, "APP_INFO_PROPERTY"

    iget-object v2, p0, Lcom/biznessapps/fragments/single/TellFriendsFragment;->appInfo:Lcom/biznessapps/model/App;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/TellFriendsFragment;->setBackgrounds()V

    .line 62
    return-void
.end method
