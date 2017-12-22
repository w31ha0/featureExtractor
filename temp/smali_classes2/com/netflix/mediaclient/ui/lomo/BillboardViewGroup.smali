.class public Lcom/netflix/mediaclient/ui/lomo/BillboardViewGroup;
.super Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;
.source "BillboardViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;",
        "Lcom/netflix/mediaclient/ui/lomo/BillboardView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;-><init>(Landroid/content/Context;Z)V

    .line 15
    const v0, 0x7f100008

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardViewGroup;->setId(I)V

    .line 16
    return-void
.end method


# virtual methods
.method protected bridge synthetic createChildView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardViewGroup;->createChildView(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    move-result-object v0

    return-object v0
.end method

.method protected createChildView(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/lomo/BillboardView;
    .locals 1

    .prologue
    .line 20
    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;-><init>(Landroid/content/Context;)V

    .line 23
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected shouldApplyPaddingToChildren()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic updateViewIds(Landroid/view/View;III)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/lomo/BillboardViewGroup;->updateViewIds(Lcom/netflix/mediaclient/ui/lomo/BillboardView;III)V

    return-void
.end method

.method protected updateViewIds(Lcom/netflix/mediaclient/ui/lomo/BillboardView;III)V
    .locals 1

    .prologue
    .line 28
    add-int v0, p3, p4

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->computeViewId(II)I

    move-result v0

    .line 32
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setId(I)V

    .line 33
    return-void
.end method
