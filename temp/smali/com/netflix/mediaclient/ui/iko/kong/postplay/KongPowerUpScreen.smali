.class public Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;
.super Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBaseScreen;
.source "KongPowerUpScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KongPowerUpScreen"


# instance fields
.field private battleOptInVOUrl:Ljava/lang/String;

.field private battleOptInVOVolume:F

.field private battleTitleSoundId:I

.field private battleTitleVOUrl:Ljava/lang/String;

.field private battleTitleVOVolume:F

.field private context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private emptyBadgeImage:Landroid/widget/ImageView;

.field private gear1Item:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

.field private gear1ItemSoundUrl:Ljava/lang/String;

.field private gear1ItemSoundVolume:F

.field private gear1SoundId:I

.field private gearItemsImageViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private gearItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;",
            ">;"
        }
    .end annotation
.end field

.field private kongAvatarImageUrl:Ljava/lang/String;

.field private mBattleWhatsNextSoundId:I

.field private nextEpisodeVideoId:I

.field private powerUpAvatarImage:Landroid/widget/ImageView;

.field private powerUpContainer:Landroid/view/ViewGroup;

.field private powerUpContainerPopulated:Z

.field private powerUpParams:Landroid/widget/FrameLayout$LayoutParams;

.field private powerUpTitle:Ljava/lang/String;

.field private powerUpTitleView:Landroid/widget/TextView;

.field private powerUpViewsContainer:Landroid/view/ViewGroup;

.field private smAvatarImage:Landroid/widget/ImageView;

.field private smAvatarImageUrl:Ljava/lang/String;

.field private unlockEmptyBadgeUrl:Ljava/lang/String;

.field private unlockVOUrl:Ljava/lang/String;

.field private unlockVOVolume:F

.field private unlockedSoundId:I

.field private whiteFlareImage:Landroid/widget/ImageView;

.field private whiteFlareImageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBaseScreen;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gearItemsImageViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->whiteFlareImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->smAvatarImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpAvatarImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpContainer:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method hide()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 225
    return-void
.end method

.method initViews(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 105
    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpViewsContainer:Landroid/view/ViewGroup;

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpViewsContainer:Landroid/view/ViewGroup;

    const v1, 0x7f1002b8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpContainer:Landroid/view/ViewGroup;

    .line 108
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpViewsContainer:Landroid/view/ViewGroup;

    const v1, 0x7f1002b7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpTitleView:Landroid/widget/TextView;

    .line 111
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->smAvatarImage:Landroid/widget/ImageView;

    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->smAvatarImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->whiteFlareImage:Landroid/widget/ImageView;

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->whiteFlareImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->emptyBadgeImage:Landroid/widget/ImageView;

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->emptyBadgeImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gearItemsList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gearItemsImageViewList:Ljava/util/ArrayList;

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gearItemsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    .line 120
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 121
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gearItemsImageViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpAvatarImage:Landroid/widget/ImageView;

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpAvatarImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    return-void
.end method

.method loadPostPlayData(Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;)V
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getNextEpisodeVideoId()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->nextEpisodeVideoId:I

    .line 74
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getSmAvatarImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->smAvatarImageUrl:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getWhiteFlareImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->whiteFlareImageUrl:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getUnlockEmptyBadgeImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->unlockEmptyBadgeUrl:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getAvatarImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->kongAvatarImageUrl:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getCollectionItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gearItemsList:Ljava/util/List;

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gearItemsList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gearItemsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gearItemsList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gear1Item:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gear1Item:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->getItemNameString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpTitle:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gear1Item:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->getItemSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gear1ItemSoundUrl:Ljava/lang/String;

    .line 86
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->getVolume()F

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gear1ItemSoundVolume:F

    .line 90
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getBattleTitleSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->battleTitleVOUrl:Ljava/lang/String;

    .line 93
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->getVolume()F

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->battleTitleVOVolume:F

    .line 96
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getUnlockVOSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_2

    .line 98
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->unlockVOUrl:Ljava/lang/String;

    .line 99
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->getVolume()F

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->unlockVOVolume:F

    .line 101
    :cond_2
    return-void
.end method

.method loadResources()V
    .locals 4

    .prologue
    .line 131
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->smAvatarImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->smAvatarImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadImageBitmapFromCache(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gearItemsList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gearItemsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gearItemsImageViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 137
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gearItemsList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->getBadgeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadImageBitmapFromCache(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 135
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->whiteFlareImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->whiteFlareImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadImageBitmapFromCache(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->emptyBadgeImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->unlockEmptyBadgeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadImageBitmapFromCache(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpAvatarImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->kongAvatarImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadImageBitmapFromCache(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->loadSoundPoolResources()V

    .line 145
    return-void
.end method

.method loadSoundPoolResources()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getSoundPoolManager()Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    move-result-object v0

    .line 149
    if-nez v0, :cond_0

    .line 150
    const-string/jumbo v0, "KongPowerUpScreen"

    const-string/jumbo v1, "Sound pool manager is null. Cannot load VO resources."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gear1ItemSoundUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getResourceToLocalCacheFileMap(Ljava/lang/String;)Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->loadSoundPoolVo(Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gear1SoundId:I

    .line 157
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->battleTitleVOUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getResourceToLocalCacheFileMap(Ljava/lang/String;)Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;

    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->loadSoundPoolVo(Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->battleTitleSoundId:I

    .line 160
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->unlockVOUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getResourceToLocalCacheFileMap(Ljava/lang/String;)Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;

    move-result-object v1

    .line 161
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->loadSoundPoolVo(Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->unlockedSoundId:I

    goto :goto_0
.end method

.method onResourcesLoaded()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpContainerPopulated:Z

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->smAvatarImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gearItemsList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 172
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gearItemsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gearItemsImageViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 174
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 175
    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpContainerPopulated:Z

    if-nez v2, :cond_1

    if-lez v1, :cond_1

    .line 176
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 172
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 180
    :cond_2
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpContainerPopulated:Z

    if-nez v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->whiteFlareImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 183
    :cond_3
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpContainerPopulated:Z

    if-nez v0, :cond_4

    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->emptyBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 187
    :cond_4
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpContainerPopulated:Z

    if-nez v0, :cond_5

    .line 188
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpAvatarImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 190
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpContainerPopulated:Z

    .line 191
    return-void
.end method

.method playBattleTitleSound()V
    .locals 3

    .prologue
    .line 377
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getSoundPoolManager()Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_0

    .line 379
    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->battleTitleSoundId:I

    iget v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->battleTitleVOVolume:F

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->playSoundPoolId(IF)V

    .line 381
    :cond_0
    return-void
.end method

.method playGear1Sound()V
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getSoundPoolManager()Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_0

    .line 386
    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gear1SoundId:I

    iget v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gear1ItemSoundVolume:F

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->playSoundPoolId(IF)V

    .line 388
    :cond_0
    return-void
.end method

.method playUnlockedSound()V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getSoundPoolManager()Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_0

    .line 230
    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->unlockedSoundId:I

    iget v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->unlockVOVolume:F

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->playSoundPoolId(IF)V

    .line 232
    :cond_0
    return-void
.end method

.method public releaseBitmapResources()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->smAvatarImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->resetImageDrawable(Landroid/widget/ImageView;)V

    .line 211
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gearItemsList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 212
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gearItemsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gearItemsImageViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 214
    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->resetImageDrawable(Landroid/widget/ImageView;)V

    .line 212
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->whiteFlareImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->resetImageDrawable(Landroid/widget/ImageView;)V

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->emptyBadgeImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->resetImageDrawable(Landroid/widget/ImageView;)V

    .line 219
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpAvatarImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->resetImageDrawable(Landroid/widget/ImageView;)V

    .line 220
    return-void
.end method

.method start()V
    .locals 4

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->playUnlockedSound()V

    .line 196
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$1;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    return-void
.end method

.method startAnimation()Z
    .locals 15

    .prologue
    .line 235
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    if-nez v0, :cond_0

    .line 236
    const-string/jumbo v0, "KongPowerUpScreen"

    const-string/jumbo v1, "Post play manager is null. Cannot start unlock animation."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v0, 0x0

    .line 373
    :goto_0
    return v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->cancelCurrentAnimation()V

    .line 242
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->smAvatarImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 243
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->whiteFlareImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 244
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->emptyBadgeImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 245
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpAvatarImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 248
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpTitleView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 249
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 250
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->nextEpisodeVideoId:I

    if-gtz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->smAvatarImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->smAvatarImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 254
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpTitleView:Landroid/widget/TextView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v6, 0x3e8

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 255
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->smAvatarImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v2, v6

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v6, 0x3e8

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 256
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpAvatarImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v2, v7

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v8, 0x3e8

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpAvatarImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v2, v8

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v8, 0x3e8

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 259
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->getActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 262
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gearItemsImageViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 263
    const/4 v0, 0x1

    move v2, v0

    :goto_1
    if-ge v2, v10, :cond_5

    .line 264
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->gearItemsImageViewList:Ljava/util/ArrayList;

    sub-int v1, v10, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 265
    div-int/lit8 v1, v2, 0x2

    add-int/lit8 v1, v1, 0x1

    mul-int v11, v9, v1

    rem-int/lit8 v1, v2, 0x2

    if-nez v1, :cond_4

    const/4 v1, -0x1

    :goto_2
    mul-int/2addr v1, v11

    .line 266
    add-int/lit8 v11, v10, -0x1

    rem-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    if-le v2, v11, :cond_3

    .line 267
    :cond_2
    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 268
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 270
    :cond_3
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    invoke-static {v0, v1, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v12, 0x3e8

    invoke-virtual {v0, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 265
    :cond_4
    const/4 v1, 0x1

    goto :goto_2

    .line 273
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpViewsContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 274
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 276
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->getActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenHeightInPixels(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->getActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v0, v1

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    .line 277
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->whiteFlareImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v1, v2, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v10, 0x3e8

    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 278
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpAvatarImage:Landroid/widget/ImageView;

    const v9, 0x3f4ccccd    # 0.8f

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 279
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpAvatarImage:Landroid/widget/ImageView;

    const v9, 0x3f4ccccd    # 0.8f

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 280
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpAvatarImage:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v0, v10, v11

    invoke-static {v2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v10, 0x29a

    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 281
    iget-object v9, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->powerUpAvatarImage:Landroid/widget/ImageView;

    sget-object v10, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput v0, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v10, 0x29a

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 282
    iget-object v9, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->emptyBadgeImage:Landroid/widget/ImageView;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v10, 0x3e8

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 283
    iget-object v10, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->emptyBadgeImage:Landroid/widget/ImageView;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-wide/16 v12, 0x3e8

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 285
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->playGear1Sound()V

    .line 286
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    .line 287
    invoke-virtual {v11, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 288
    new-instance v3, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$2;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$2;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;)V

    invoke-virtual {v11, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 310
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 311
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 312
    new-instance v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$3;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;)V

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 325
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 327
    iget v12, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->nextEpisodeVideoId:I

    if-lez v12, :cond_6

    .line 328
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 329
    invoke-virtual {v1, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 333
    :goto_3
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 334
    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 335
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 336
    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 337
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 370
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->setCurrentAnimation(Landroid/animation/Animator;)V

    .line 371
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 373
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 331
    :cond_6
    invoke-virtual {v1, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_3
.end method
