.class public abstract Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;
.super Landroid/widget/LinearLayout;
.source "VideoViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
        "V:",
        "Landroid/view/View;",
        ":",
        "Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView",
        "<TT;>;>",
        "Landroid/widget/LinearLayout;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "VideoViewGroup"


# instance fields
.field protected isRtlLocale:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    const v0, 0x7f100026

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->setId(I)V

    .line 39
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->setOrientation(I)V

    .line 42
    if-eqz p2, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->getLomoWidthType()Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->applyContentOverlapPadding(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/View;Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;)V

    .line 46
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->isCurrentLocaleRTL()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->isRtlLocale:Z

    .line 47
    return-void
.end method

.method private calculatePosition(II)I
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->isRtlLocale:Z

    if-eqz v0, :cond_0

    .line 124
    sub-int v0, p2, p1

    add-int/lit8 p1, v0, -0x1

    .line 131
    :cond_0
    return p1
.end method


# virtual methods
.method protected abstract createChildView(Landroid/content/Context;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TV;"
        }
    .end annotation
.end method

.method protected getChildPaddingDimenResId()I
    .locals 1

    .prologue
    .line 76
    const v0, 0x7f0a019e

    return v0
.end method

.method protected getLomoWidthType()Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;->STANDARD:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    return-object v0
.end method

.method public init(I)V
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 50
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 55
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->getChildPaddingDimenResId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 58
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->createChildView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    .line 60
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->shouldApplyPaddingToChildren()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 62
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 63
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 64
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 67
    :cond_0
    invoke-virtual {p0, v3, v1}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_1
    return-void
.end method

.method protected abstract shouldApplyPaddingToChildren()Z
.end method

.method public updateDataThenViews(Ljava/util/List;IIILcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;III",
            "Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 87
    mul-int v7, p3, p2

    move v6, v5

    .line 88
    :goto_0
    if-ge v6, p2, :cond_5

    .line 89
    invoke-virtual {p0, v6}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 91
    if-nez v0, :cond_0

    .line 92
    const-string/jumbo v0, "VideoViewGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected valid child but child is null, index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0, v0, p4, v7, v6}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->updateViewIds(Landroid/view/View;III)V

    .line 98
    add-int v3, v7, v6

    .line 99
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_4

    .line 101
    invoke-direct {p0, v6, p2}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->calculatePosition(II)I

    move-result v1

    .line 102
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 103
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    .line 104
    if-eqz v1, :cond_2

    .line 105
    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;

    if-nez p3, :cond_1

    const/4 v4, 0x1

    :goto_2
    move-object v2, p5

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;->update(Ljava/lang/Object;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V

    goto :goto_1

    :cond_1
    move v4, v5

    goto :goto_2

    .line 107
    :cond_2
    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;->hide()V

    goto :goto_1

    .line 111
    :cond_3
    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;->hide()V

    goto :goto_1

    .line 116
    :cond_4
    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;->hide()V

    goto :goto_1

    .line 119
    :cond_5
    return-void
.end method

.method protected abstract updateViewIds(Landroid/view/View;III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;III)V"
        }
    .end annotation
.end method
