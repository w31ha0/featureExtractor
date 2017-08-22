.class public Lcom/kosbrother/tool/DetectScrollView;
.super Landroid/widget/ScrollView;
.source "DetectScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kosbrother/tool/DetectScrollView$DetectScrollViewListener;
    }
.end annotation


# instance fields
.field private scrollViewListener:Lcom/kosbrother/tool/DetectScrollView$DetectScrollViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kosbrother/tool/DetectScrollView;->scrollViewListener:Lcom/kosbrother/tool/DetectScrollView$DetectScrollViewListener;

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kosbrother/tool/DetectScrollView;->scrollViewListener:Lcom/kosbrother/tool/DetectScrollView$DetectScrollViewListener;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kosbrother/tool/DetectScrollView;->scrollViewListener:Lcom/kosbrother/tool/DetectScrollView$DetectScrollViewListener;

    .line 18
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "oldx"    # I
    .param p4, "oldy"    # I

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 31
    iget-object v0, p0, Lcom/kosbrother/tool/DetectScrollView;->scrollViewListener:Lcom/kosbrother/tool/DetectScrollView$DetectScrollViewListener;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/kosbrother/tool/DetectScrollView;->scrollViewListener:Lcom/kosbrother/tool/DetectScrollView$DetectScrollViewListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/kosbrother/tool/DetectScrollView$DetectScrollViewListener;->onScrollChanged(Lcom/kosbrother/tool/DetectScrollView;IIII)V

    .line 34
    :cond_0
    return-void
.end method

.method public setScrollViewListener(Lcom/kosbrother/tool/DetectScrollView$DetectScrollViewListener;)V
    .locals 0
    .param p1, "scrollViewListener"    # Lcom/kosbrother/tool/DetectScrollView$DetectScrollViewListener;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/kosbrother/tool/DetectScrollView;->scrollViewListener:Lcom/kosbrother/tool/DetectScrollView$DetectScrollViewListener;

    .line 26
    return-void
.end method
