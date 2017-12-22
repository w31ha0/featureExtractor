.class public Lcom/netflix/mediaclient/servicemgr/MementoMyListTextViewWrapper;
.super Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;
.source "MementoMyListTextViewWrapper.java"


# instance fields
.field private label:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZ)V
    .locals 8

    .prologue
    .line 17
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;-><init>(Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZ)V

    .line 19
    return-void
.end method


# virtual methods
.method protected setAsInList()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/MementoMyListTextViewWrapper;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/MementoMyListTextViewWrapper;->textView:Landroid/widget/TextView;

    const v1, 0x7f09029e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 33
    :cond_0
    return-void
.end method

.method protected setAsNotInList()V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/MementoMyListTextViewWrapper;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/MementoMyListTextViewWrapper;->textView:Landroid/widget/TextView;

    const v1, 0x7f090290

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 26
    :cond_0
    return-void
.end method

.method public bridge synthetic update(Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->update(Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;)V

    return-void
.end method
