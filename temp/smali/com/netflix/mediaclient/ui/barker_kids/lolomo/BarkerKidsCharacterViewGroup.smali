.class public Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterViewGroup;
.super Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;
.source "BarkerKidsCharacterViewGroup.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
        "Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;-><init>(Landroid/content/Context;Z)V

    .line 17
    return-void
.end method


# virtual methods
.method protected bridge synthetic createChildView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterViewGroup;->createChildView(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;

    move-result-object v0

    return-object v0
.end method

.method protected createChildView(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getLomoWidthType()Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;->KUBRICK_KIDS_CHARACTER_ROW:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    return-object v0
.end method

.method protected shouldApplyPaddingToChildren()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic updateViewIds(Landroid/view/View;III)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterViewGroup;->updateViewIds(Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;III)V

    return-void
.end method

.method protected updateViewIds(Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;III)V
    .locals 0

    .prologue
    .line 32
    return-void
.end method
