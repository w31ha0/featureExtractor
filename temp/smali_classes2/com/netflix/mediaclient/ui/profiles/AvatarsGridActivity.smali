.class public Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source "AvatarsGridActivity.java"


# static fields
.field private static final BUNDLE_EXTRA_ICONS_LIST:Ljava/lang/String; = "extra_icons_list"

.field private static final EXTRA_CURRENT_AVATAR:Ljava/lang/String; = "extra_current_avatar"

.field private static final EXTRA_DEFAULT_AVATAR:Ljava/lang/String; = "extra_default_avatar"

.field private static final TAG:Ljava/lang/String; = "AvatarsGridActivity"


# instance fields
.field private final errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

.field private mAdapter:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;

.field private mAvatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentAvatar:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

.field private mDefaultAvatar:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

.field private mGridView:Landroid/widget/GridView;

.field private mLoadingWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

.field private mSelectedIconPos:I

.field private mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    .line 213
    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$2;-><init>(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mAvatars:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mAvatars:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->refreshCurrentIconSelection()V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->updateUI()V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mDefaultAvatar:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mAdapter:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mSelectedIconPos:I

    return v0
.end method

.method public static getStartIntent(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 84
    const-string/jumbo v1, "extra_default_avatar"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 85
    const-string/jumbo v1, "extra_current_avatar"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 89
    return-object v0

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "You must specify default and current avatars to launch this activity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initUI()V
    .locals 3

    .prologue
    .line 220
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->setContentView(I)V

    .line 222
    const v0, 0x7f1000a5

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mGridView:Landroid/widget/GridView;

    .line 223
    new-instance v0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const v1, 0x7f1000a4

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;-><init>(Landroid/view/View;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mLoadingWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    .line 224
    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;-><init>(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mAdapter:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;

    .line 227
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09023f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setTitle(Ljava/lang/String;)V

    .line 231
    sget-object v1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->GONE:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setLogoType(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)V

    .line 233
    :cond_0
    return-void
.end method

.method private refreshCurrentIconSelection()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mAvatars:Ljava/util/List;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mCurrentAvatar:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mAvatars:Ljava/util/List;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mCurrentAvatar:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mSelectedIconPos:I

    .line 205
    return-void

    .line 204
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showLoading(ZZ)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 303
    if-eqz p1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mLoadingWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingView(Z)V

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mLoadingWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    goto :goto_0
.end method

.method private updateTopGridViewMargin()V
    .locals 2

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 286
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isNotTabletByContext(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ViewUtils;->getDefaultActionBarHeight(Landroid/content/Context;)I

    move-result v1

    .line 288
    add-int/2addr v0, v1

    move v1, v0

    .line 291
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 292
    return-void

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method private updateUI()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 236
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_1

    move v0, v1

    .line 237
    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mAvatars:Ljava/util/List;

    if-nez v0, :cond_2

    .line 238
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->showLoading(ZZ)V

    .line 274
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 236
    goto :goto_0

    .line 242
    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->showLoading(ZZ)V

    .line 244
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->updateTopGridViewMargin()V

    .line 245
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mAdapter:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$3;-><init>(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 264
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 265
    new-instance v1, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$4;-><init>(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 273
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mAdapter:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method


# virtual methods
.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$1;-><init>(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)V

    return-object v0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 317
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->profilesGate:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method protected handleProfilesListUpdated()V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mServiceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    new-instance v1, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$AvatarsFetchedCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$AvatarsFetchedCallback;-><init>(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->fetchAvailableAvatarsList(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 167
    :cond_0
    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 97
    if-eqz v1, :cond_0

    const-string/jumbo v0, "extra_default_avatar"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "extra_current_avatar"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string/jumbo v0, "extra_default_avatar"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mDefaultAvatar:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    .line 99
    const-string/jumbo v0, "extra_current_avatar"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mCurrentAvatar:Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mSelectedIconPos:I

    .line 103
    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v0, "extra_icons_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const-string/jumbo v0, "extra_icons_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mAvatars:Ljava/util/List;

    .line 107
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->initUI()V

    .line 108
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->updateUI()V

    .line 109
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mAvatars:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 116
    const-string/jumbo v1, "extra_icons_list"

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->mAvatars:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 118
    :cond_0
    return-void
.end method

.method public performUpAction()V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->setResult(I)V

    .line 210
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->finish()V

    .line 211
    return-void
.end method

.method protected shouldAttachToolbar()Z
    .locals 1

    .prologue
    .line 171
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isNotTabletByContext(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public showAboutInMenu()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public showSettingsInMenu()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public showSignOutInMenu()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method
