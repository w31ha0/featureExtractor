.class public Lcom/netflix/mediaclient/ui/lomo/LoMoViewGroup;
.super Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;
.source "LoMoViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
        "Lcom/netflix/mediaclient/android/widget/VideoView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;-><init>(Landroid/content/Context;Z)V

    .line 16
    return-void
.end method


# virtual methods
.method protected bridge synthetic createChildView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewGroup;->createChildView(Landroid/content/Context;)Lcom/netflix/mediaclient/android/widget/VideoView;

    move-result-object v0

    return-object v0
.end method

.method protected createChildView(Landroid/content/Context;)Lcom/netflix/mediaclient/android/widget/VideoView;
    .locals 2

    .prologue
    .line 20
    new-instance v1, Lcom/netflix/mediaclient/android/widget/VideoView;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/android/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->useLolomoBoxArt()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/VideoView;->setIsHorizontal(Z)V

    .line 24
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/VideoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 25
    return-object v1

    .line 21
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldApplyPaddingToChildren()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic updateViewIds(Landroid/view/View;III)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/netflix/mediaclient/android/widget/VideoView;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewGroup;->updateViewIds(Lcom/netflix/mediaclient/android/widget/VideoView;III)V

    return-void
.end method

.method protected updateViewIds(Lcom/netflix/mediaclient/android/widget/VideoView;III)V
    .locals 1

    .prologue
    .line 30
    add-int v0, p3, p4

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->computeViewId(II)I

    move-result v0

    .line 34
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/VideoView;->setId(I)V

    .line 35
    return-void
.end method
