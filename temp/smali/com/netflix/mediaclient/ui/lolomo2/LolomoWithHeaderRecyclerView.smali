.class public Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;
.super Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;
.source "LolomoWithHeaderRecyclerView.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/lolomo2/WithHeader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;->getLolomoRecyclerViewAdapter()Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->addHeaderView(Landroid/view/View;)V

    .line 62
    :cond_0
    return-void
.end method

.method getLolomoRecyclerViewAdapter()Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    .line 39
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 45
    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoWithHeaderRecyclerView;->getLolomoRecyclerViewAdapter()Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;->removeHeaderView(Landroid/view/View;)Z

    move-result v0

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
