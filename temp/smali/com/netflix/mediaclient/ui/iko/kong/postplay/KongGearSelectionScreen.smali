.class public Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;
.super Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBaseScreen;
.source "KongGearSelectionScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KongGearSelectionScreen"


# instance fields
.field private autoPlayInterval:I

.field private battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

.field private battleLoseTrackId:I

.field private battleLoseVideoId:I

.field private battleWinTrackId:I

.field private battleWinVideoId:I

.field private bitmapGear1:Landroid/graphics/Bitmap;

.field private bitmapGear2:Landroid/graphics/Bitmap;

.field private finishTimeCounterSeconds:I

.field private gear1:Landroid/widget/ImageView;

.field private gear1Background:Landroid/widget/ImageView;

.field private gear1BadgeUrl:Ljava/lang/String;

.field private gear1Group:Landroid/view/ViewGroup;

.field private gear1Item:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

.field private gear1ItemNameString:Ljava/lang/String;

.field private gear1ItemSoundUrl:Ljava/lang/String;

.field private gear1ItemSoundVolume:F

.field private gear1SoundId:I

.field private gear1Timer:Landroid/widget/TextView;

.field private gear1Title:Landroid/widget/TextView;

.field private gear2:Landroid/widget/ImageView;

.field private gear2Background:Landroid/widget/ImageView;

.field private gear2BadgeUrl:Ljava/lang/String;

.field private gear2Group:Landroid/view/ViewGroup;

.field private gear2Item:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

.field private gear2ItemNameString:Ljava/lang/String;

.field private gear2ItemSoundUrl:Ljava/lang/String;

.field private gear2ItemSoundVolume:F

.field private gear2SoundId:I

.field private gear2Timer:Landroid/widget/TextView;

.field private gear2Title:Landroid/widget/TextView;

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

.field private interpolator:Landroid/animation/TimeInterpolator;

.field private itemSelectionHeaderString:Ljava/lang/String;

.field private itemSelectionSoundUrl:Ljava/lang/String;

.field private itemSelectionSoundVolume:F

.field private leftGateWidth:I

.field private prepareBattleSoundId:I

.field private rightGateWidth:I

.field private timerString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBaseScreen;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;)V

    .line 68
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->interpolator:Landroid/animation/TimeInterpolator;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->itemSelectionHeaderString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Group:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->finishTimeCounterSeconds:I

    return v0
.end method

.method static synthetic access$1002(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->finishTimeCounterSeconds:I

    return p1
.end method

.method static synthetic access$1010(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)I
    .locals 2

    .prologue
    .line 37
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->finishTimeCounterSeconds:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->finishTimeCounterSeconds:I

    return v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->timerString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gearItemsList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleWinVideoId:I

    return v0
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleLoseVideoId:I

    return v0
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleWinTrackId:I

    return v0
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleLoseTrackId:I

    return v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Group:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1ItemNameString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2ItemNameString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Timer:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Timer:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->autoPlayInterval:I

    return v0
.end method


# virtual methods
.method animationEndUIState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 415
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getBattleIntroContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 416
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getBattleIntroCompoundView()Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->setScaleX(F)V

    .line 417
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getBattleIntroCompoundView()Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->setScaleY(F)V

    .line 418
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getLeftGate()Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->leftGateWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 419
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getRightGate()Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->rightGateWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 420
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getKongAvatar()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 421
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getOpponentAvatar()Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->rightGateWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 422
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getVersusHex()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 423
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getVersusHexSword()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 425
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Group:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 426
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Group:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 427
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1ItemNameString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2ItemNameString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Timer:Landroid/widget/TextView;

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    .line 430
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Timer:Landroid/widget/TextView;

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    .line 431
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Group:Landroid/view/ViewGroup;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 432
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Group:Landroid/view/ViewGroup;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 434
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Group:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 435
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Group:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 436
    return-void
.end method

.method getBattleLoseTrackId()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleLoseTrackId:I

    return v0
.end method

.method getBattleLostVideoId()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleLoseVideoId:I

    return v0
.end method

.method getBattleWinTrackId()I
    .locals 1

    .prologue
    .line 492
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleWinTrackId:I

    return v0
.end method

.method getBattleWinVideoId()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleWinVideoId:I

    return v0
.end method

.method hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 230
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Group:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 231
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Group:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 232
    return-void
.end method

.method initViews(Landroid/view/View;)V
    .locals 9

    .prologue
    const v8, 0x7f1001fb

    const v7, 0x7f1001fa

    const v6, 0x7f100075

    const v5, 0x7f100071

    const/4 v4, 0x0

    .line 132
    const v0, 0x7f1002b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Group:Landroid/view/ViewGroup;

    .line 133
    const v0, 0x7f1002b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Group:Landroid/view/ViewGroup;

    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->leftGateWidth:I

    .line 137
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->leftGateWidth:I

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->rightGateWidth:I

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Group:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Group:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1:Landroid/widget/ImageView;

    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Group:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Background:Landroid/widget/ImageView;

    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Group:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    .line 143
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Background:Landroid/widget/ImageView;

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 145
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Group:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Title:Landroid/widget/TextView;

    .line 146
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Group:Landroid/view/ViewGroup;

    const v2, 0x7f1001fc

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Timer:Landroid/widget/TextView;

    .line 148
    new-instance v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$BattleResultClickListener;

    invoke-direct {v1, p0, v4}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$BattleResultClickListener;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;I)V

    .line 149
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Group:Landroid/view/ViewGroup;

    new-instance v3, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;-><init>(Lcom/netflix/mediaclient/android/widget/PressedStateHandler;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Timer:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Group:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Group:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2:Landroid/widget/ImageView;

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Group:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Background:Landroid/widget/ImageView;

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Group:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    .line 158
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Background:Landroid/widget/ImageView;

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 159
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Group:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Title:Landroid/widget/TextView;

    .line 160
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Group:Landroid/view/ViewGroup;

    const v2, 0x7f1001fc

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Timer:Landroid/widget/TextView;

    .line 161
    new-instance v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$BattleResultClickListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$BattleResultClickListener;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;I)V

    .line 162
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Group:Landroid/view/ViewGroup;

    new-instance v3, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;-><init>(Lcom/netflix/mediaclient/android/widget/PressedStateHandler;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Timer:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getBattleIntroScreen()Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    .line 167
    return-void
.end method

.method loadPostPlayData(Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;)V
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getAutoPlayInterval()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->autoPlayInterval:I

    .line 88
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getAutoPlayString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->timerString:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getItemSelectionHeaderString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->itemSelectionHeaderString:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getCollectionItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gearItemsList:Ljava/util/List;

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gearItemsList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gearItemsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gearItemsList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Item:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    .line 94
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gearItemsList:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Item:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Item:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->getItemNameString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1ItemNameString:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Item:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->getItemNameString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2ItemNameString:Ljava/lang/String;

    .line 97
    const-string/jumbo v0, "Win"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Item:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->getItemResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Item:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->getVideoId()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleLoseVideoId:I

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Item:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->getVideoId()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleWinVideoId:I

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Item:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->getTrackId()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleWinTrackId:I

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Item:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->getTrackId()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleLoseTrackId:I

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Item:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->getBadgeUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1BadgeUrl:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Item:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->getBadgeUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2BadgeUrl:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Item:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->getItemSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1ItemSoundUrl:Ljava/lang/String;

    .line 114
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->getVolume()F

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1ItemSoundVolume:F

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Item:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->getItemSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2ItemSoundUrl:Ljava/lang/String;

    .line 119
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->getVolume()F

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2ItemSoundVolume:F

    .line 122
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getItemSelectionSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->itemSelectionSoundUrl:Ljava/lang/String;

    .line 125
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->getVolume()F

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->itemSelectionSoundVolume:F

    .line 128
    :cond_2
    return-void

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Item:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->getVideoId()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleWinVideoId:I

    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Item:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->getVideoId()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleLoseVideoId:I

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Item:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->getTrackId()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleWinTrackId:I

    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Item:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->getTrackId()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleLoseTrackId:I

    goto :goto_0
.end method

.method loadResources()V
    .locals 3

    .prologue
    .line 171
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1BadgeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadImageBitmapFromCache(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1BadgeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->fetchImageFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->bitmapGear1:Landroid/graphics/Bitmap;

    .line 175
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2BadgeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->fetchImageFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->bitmapGear2:Landroid/graphics/Bitmap;

    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2BadgeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->loadImageBitmapFromCache(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->loadSoundPoolResources()V

    .line 180
    return-void
.end method

.method loadSoundPoolResources()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getSoundPoolManager()Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    move-result-object v0

    .line 184
    if-nez v0, :cond_0

    .line 185
    const-string/jumbo v0, "KongGearSelectionScreen"

    const-string/jumbo v1, "Sound pool manager is null. Cannot load VO resources."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1ItemSoundUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getResourceToLocalCacheFileMap(Ljava/lang/String;)Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;

    move-result-object v1

    .line 190
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->loadSoundPoolVo(Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1SoundId:I

    .line 191
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2ItemSoundUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getResourceToLocalCacheFileMap(Ljava/lang/String;)Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;

    move-result-object v1

    .line 192
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->loadSoundPoolVo(Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2SoundId:I

    .line 193
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->itemSelectionSoundUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getResourceToLocalCacheFileMap(Ljava/lang/String;)Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;

    move-result-object v1

    .line 194
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->loadSoundPoolVo(Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->prepareBattleSoundId:I

    goto :goto_0
.end method

.method onResourcesLoaded()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Item:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->bitmapGear1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Item:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->bitmapGear1:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->setBadgeBitmap(Landroid/graphics/Bitmap;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Item:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->bitmapGear2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Item:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->bitmapGear2:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->setBadgeBitmap(Landroid/graphics/Bitmap;)V

    .line 205
    :cond_1
    return-void
.end method

.method playGear1Sound()V
    .locals 3

    .prologue
    .line 439
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getSoundPoolManager()Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    move-result-object v0

    .line 440
    if-eqz v0, :cond_0

    .line 441
    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1SoundId:I

    iget v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1ItemSoundVolume:F

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->playSoundPoolId(IF)V

    .line 443
    :cond_0
    return-void
.end method

.method playGear2Sound()V
    .locals 3

    .prologue
    .line 446
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getSoundPoolManager()Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    move-result-object v0

    .line 447
    if-eqz v0, :cond_0

    .line 448
    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2SoundId:I

    iget v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2ItemSoundVolume:F

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->playSoundPoolId(IF)V

    .line 450
    :cond_0
    return-void
.end method

.method playPrepareBattleSound()V
    .locals 3

    .prologue
    .line 453
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getSoundPoolManager()Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;

    move-result-object v0

    .line 454
    if-eqz v0, :cond_0

    .line 455
    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->prepareBattleSoundId:I

    iget v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->itemSelectionSoundVolume:F

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongSoundPoolManager;->playSoundPoolId(IF)V

    .line 457
    :cond_0
    return-void
.end method

.method public releaseBitmapResources()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->resetImageDrawable(Landroid/widget/ImageView;)V

    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->resetImageDrawable(Landroid/widget/ImageView;)V

    .line 217
    iput-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->bitmapGear1:Landroid/graphics/Bitmap;

    .line 218
    iput-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->bitmapGear2:Landroid/graphics/Bitmap;

    .line 219
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gearItemsList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gearItemsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    .line 221
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->setBadgeBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 226
    :cond_1
    return-void
.end method

.method setCountdownTimerText()V
    .locals 2

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$6;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$6;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 481
    return-void
.end method

.method start()V
    .locals 0

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->playPrepareBattleSound()V

    .line 210
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->startAnimation()Z

    .line 211
    return-void
.end method

.method startAnimation()Z
    .locals 13

    .prologue
    .line 241
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    if-nez v0, :cond_0

    .line 242
    const-string/jumbo v0, "KongGearSelectionScreen"

    const-string/jumbo v1, "Post play manager is null. Cannot start animation."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v0, 0x0

    .line 407
    :goto_0
    return v0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    if-nez v0, :cond_1

    .line 247
    const-string/jumbo v0, "KongGearSelectionScreen"

    const-string/jumbo v1, "Battle intro screen is null. Cannot start animation."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v0, 0x0

    goto :goto_0

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->cancelCurrentAnimation()V

    .line 252
    const/4 v0, 0x0

    .line 254
    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->autoPlayInterval:I

    iput v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->finishTimeCounterSeconds:I

    .line 255
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getBattleIntroContainer()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 256
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getUnlockingGearContainer()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 257
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getNextEpisodeContainer()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 258
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getBattleResultAvatar()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 260
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Group:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 261
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Group:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 263
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getNextEpisodeTitle()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 264
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getNextEpisodeCountdownTimer()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 265
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getBattleTitle()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 266
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getBattleCountdownTimer()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 268
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getBattleIntroCompoundView()Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->setClickable(Z)V

    .line 269
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->getNextEpisodeView()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setClickable(Z)V

    .line 270
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Group:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 271
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Group:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 273
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 274
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 277
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->postPlayState:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    sget-object v4, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->BATTLE:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    if-ne v3, v4, :cond_3

    .line 284
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getBattleIntroContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 285
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getBattleIntroCompoundView()Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->setScaleX(F)V

    .line 286
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getBattleIntroCompoundView()Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->setScaleY(F)V

    .line 287
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getLeftGate()Landroid/widget/ImageView;

    move-result-object v0

    iget v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->leftGateWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 288
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getRightGate()Landroid/widget/ImageView;

    move-result-object v0

    iget v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->rightGateWidth:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 289
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getKongAvatar()Landroid/widget/ImageView;

    move-result-object v0

    iget v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->leftGateWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 290
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getOpponentAvatar()Landroid/widget/ImageView;

    move-result-object v0

    iget v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->rightGateWidth:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 291
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getVersusHex()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 292
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getVersusHexSword()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 294
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getLeftGate()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 295
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 296
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getRightGate()Landroid/widget/ImageView;

    move-result-object v3

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 297
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 299
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getKongAvatar()Landroid/widget/ImageView;

    move-result-object v4

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 300
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 301
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getOpponentAvatar()Landroid/widget/ImageView;

    move-result-object v5

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 302
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 303
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getVersusHex()Landroid/widget/ImageView;

    move-result-object v6

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 304
    const-wide/16 v8, 0x29a

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 305
    iget-object v7, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getVersusHexSword()Landroid/widget/ImageView;

    move-result-object v7

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 306
    const-wide/16 v8, 0x29a

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 308
    const/4 v8, 0x6

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    aput-object v3, v8, v0

    const/4 v0, 0x2

    aput-object v4, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v6, v8, v0

    const/4 v0, 0x5

    aput-object v7, v8, v0

    invoke-virtual {v2, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 316
    const-wide/16 v4, 0x29a

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 317
    const/16 v0, 0x29a

    .line 326
    :goto_1
    new-instance v3, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$1;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$1;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 333
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getVersusHex()Landroid/widget/ImageView;

    move-result-object v3

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x14d

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 334
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getVersusHexSword()Landroid/widget/ImageView;

    move-result-object v4

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v6, 0x14d

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 335
    int-to-long v6, v0

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 337
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getLeftGate()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    iget v8, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->leftGateWidth:I

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v6, v7

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v6, 0x3e8

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 338
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 339
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getRightGate()Landroid/widget/ImageView;

    move-result-object v5

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    iget v9, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->rightGateWidth:I

    int-to-float v9, v9

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 340
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 341
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getOpponentAvatar()Landroid/widget/ImageView;

    move-result-object v6

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget v10, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->rightGateWidth:I

    int-to-float v10, v10

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 342
    iget-object v7, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 343
    new-instance v7, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$2;

    invoke-direct {v7, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$2;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 358
    iget-object v7, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear1Group:Landroid/view/ViewGroup;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 359
    iget-object v8, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 360
    new-instance v8, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$3;

    invoke-direct {v8, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$3;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)V

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 366
    iget-object v8, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->gear2Group:Landroid/view/ViewGroup;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 367
    iget-object v9, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 368
    new-instance v9, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$4;

    invoke-direct {v9, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$4;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)V

    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 379
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 380
    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v7, 0x1

    aput-object v8, v10, v7

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 381
    const-wide/16 v10, 0x3e8

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 383
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 384
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 385
    invoke-virtual {v1, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 386
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$5;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 401
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->setCurrentAnimation(Landroid/animation/Animator;)V

    .line 402
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->postPlayState:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    sget-object v2, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;->BATTLE:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager$POST_PLAY_STATE;

    if-ne v0, v2, :cond_2

    .line 403
    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 405
    :cond_2
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 407
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 320
    :cond_3
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getBattleIntroContainer()Landroid/view/ViewGroup;

    move-result-object v3

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x29a

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 321
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getBattleIntroCompoundView()Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    move-result-object v4

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v6, 0x29a

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 322
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->battleIntroScreen:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->getBattleIntroCompoundView()Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    move-result-object v5

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0x29a

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 323
    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v5, v6, v3

    const/4 v3, 0x2

    aput-object v4, v6, v3

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_1
.end method
