.class public Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;
.super Landroid/widget/FrameLayout;
.source "BarkerKidsCharacterView.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
        ">;"
    }
.end annotation


# static fields
.field private static final BACKGROUND_DRAWABLE_IDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "KubrickKidsCharacterView"


# instance fields
.field private final bg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private final img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private kidsColor:I

.field private final listener:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

.field private playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->BACKGROUND_DRAWABLE_IDS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/16 v2, 0x11

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->setFocusable(Z)V

    .line 49
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 51
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 52
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 53
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->bg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->bg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 57
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 58
    new-instance v2, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 59
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setCornerRadius(I)V

    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    new-instance v0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView$CharacterVideoDetailsClickListener;

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, p0, p1, p0}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView$CharacterVideoDetailsClickListener;-><init>(Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->listener:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->kidsColor:I

    return v0
.end method


# virtual methods
.method public getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getLomoVideoViewImageUrl(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImageUrl(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->clear(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;)V

    .line 83
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->listener:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->remove(Landroid/view/View;)V

    .line 85
    return-void
.end method

.method public update(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 110
    invoke-virtual {p0, p1, p5}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Z)Ljava/lang/String;

    move-result-object v2

    .line 115
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-direct {v0, p2, p3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 116
    invoke-virtual {p0, v7}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->setVisibility(I)V

    .line 118
    sget-object v0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->BACKGROUND_DRAWABLE_IDS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int v1, p3, v0

    .line 119
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->bg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    sget-object v0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->BACKGROUND_DRAWABLE_IDS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pair;

    iget-object v0, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setBackgroundResource(I)V

    .line 120
    sget-object v0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->BACKGROUND_DRAWABLE_IDS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pair;

    iget-object v0, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->kidsColor:I

    .line 122
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->bif:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 123
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getTitle()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->LIGHT_NO_PLACEHOLDER:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    if-eqz p4, :cond_0

    move v7, v6

    .line 122
    :cond_0
    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->listener:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->img:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->update(Landroid/view/View;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/android/widget/PressedStateHandler;)V

    .line 127
    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 6

    .prologue
    .line 33
    move-object v1, p1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V

    return-void
.end method
