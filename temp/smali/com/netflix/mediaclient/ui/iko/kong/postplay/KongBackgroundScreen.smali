.class public Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;
.super Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBaseScreen;
.source "KongBackgroundScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KongBackgroundScreen"


# instance fields
.field private backButton:Landroid/widget/ImageView;

.field private backButtonImageUrl:Ljava/lang/String;

.field private background:Landroid/widget/ImageView;

.field private backgroundPattern:Landroid/widget/ImageView;

.field private battleResultHeaderString:Ljava/lang/String;

.field private bgImageUrl:Ljava/lang/String;

.field private bgPatternImageUrl:Ljava/lang/String;

.field private closeButton:Landroid/widget/ImageView;

.field private closeButtonImageUrl:Ljava/lang/String;

.field private forceToggleAnimations:Z

.field private itemSelectionHeaderString:Ljava/lang/String;

.field private kongPostPlayDismissed:Z

.field private options:Landroid/graphics/BitmapFactory$Options;

.field private postPlayTitleString:Ljava/lang/String;

.field private progress:Landroid/widget/ProgressBar;

.field private redFlareImageUrl:Ljava/lang/String;

.field private title:Landroid/widget/TextView;

.field private titleContainer:Landroid/view/ViewGroup;

.field private titleFlare:Landroid/widget/ImageView;

.field private unLockedTitleString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBaseScreen;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V

    .line 49
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->options:Landroid/graphics/BitmapFactory$Options;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->kongPostPlayDismissed:Z

    return v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->kongPostPlayDismissed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->backgroundPattern:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method getBackButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->backButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method getCloseButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->closeButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method getForceToggleAnimations()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->forceToggleAnimations:Z

    return v0
.end method

.method hide()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->closeButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->hide()V

    .line 179
    return-void
.end method

.method initViews(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 81
    const v0, 0x7f1002a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->background:Landroid/widget/ImageView;

    .line 82
    const v0, 0x7f1002a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->backgroundPattern:Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->background:Landroid/widget/ImageView;

    new-instance v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$1;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 96
    const v0, 0x7f100206

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->title:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f1002b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->titleContainer:Landroid/view/ViewGroup;

    .line 98
    const v0, 0x7f100207

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->titleFlare:Landroid/widget/ImageView;

    .line 99
    const v0, 0x7f1002ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->progress:Landroid/widget/ProgressBar;

    .line 101
    const v0, 0x7f100297

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->closeButton:Landroid/widget/ImageView;

    .line 102
    const v0, 0x7f1002b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->backButton:Landroid/widget/ImageView;

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->backButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$2;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void
.end method

.method loadPostPlayData(Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;)V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getBackgroundImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->bgImageUrl:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getHexParallaxImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->bgPatternImageUrl:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getCloseBTNImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->closeButtonImageUrl:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getBackBTNImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->backButtonImageUrl:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getRedFlareImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->redFlareImageUrl:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getUnlockedHeaderString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->unLockedTitleString:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getItemSelectionHeaderString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->itemSelectionHeaderString:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getResultTitleString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->battleResultHeaderString:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getPostPlayState()Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    move-result-object v0

    .line 69
    sget-object v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->UNLOCK:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->POWERUP:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    if-ne v0, v1, :cond_2

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->unLockedTitleString:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->postPlayTitleString:Ljava/lang/String;

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 72
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->BATTLE:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    if-ne v0, v1, :cond_3

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->itemSelectionHeaderString:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->postPlayTitleString:Ljava/lang/String;

    goto :goto_0

    .line 74
    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->RESULT:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    if-ne v0, v1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->battleResultHeaderString:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->postPlayTitleString:Ljava/lang/String;

    goto :goto_0
.end method

.method loadResources()V
    .locals 4

    .prologue
    .line 136
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x4

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->background:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->bgImageUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadImageBitmapFromCache(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)V

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->bgPatternImageUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->backgroundPattern:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->bgPatternImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadImageBitmapFromCache(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 162
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->titleFlare:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->redFlareImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadImageBitmapFromCache(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->closeButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->closeButtonImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadImageBitmapFromCache(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->backButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->backButtonImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadImageBitmapFromCache(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 165
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->bgPatternImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->fetchImageFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 149
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 150
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$3;

    invoke-direct {v2, p0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$3;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method onResourcesLoaded()V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->postPlayTitleString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->setTitleText(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->background:Landroid/widget/ImageView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->titleContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->closeButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 173
    return-void
.end method

.method public releaseBitmapResources()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->titleFlare:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->resetImageDrawable(Landroid/widget/ImageView;)V

    .line 190
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->closeButton:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->resetImageDrawable(Landroid/widget/ImageView;)V

    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->backButton:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->resetImageDrawable(Landroid/widget/ImageView;)V

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->background:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->resetImageDrawable(Landroid/widget/ImageView;)V

    .line 193
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->backgroundPattern:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->resetImageDrawable(Landroid/widget/ImageView;)V

    .line 194
    return-void
.end method

.method setTitleText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    return-void
.end method

.method showProgress(Z)V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->progress:Landroid/widget/ProgressBar;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 217
    return-void
.end method

.method start()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->backButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->closeButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 185
    return-void
.end method
