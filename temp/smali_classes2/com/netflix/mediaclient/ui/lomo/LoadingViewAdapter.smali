.class public Lcom/netflix/mediaclient/ui/lomo/LoadingViewAdapter;
.super Ljava/lang/Object;
.source "LoadingViewAdapter.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/lomo/RowAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "LoadingFragmentPagerAdapter"


# instance fields
.field private final callbacks:Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;

.field private final viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/LoadingViewAdapter;->callbacks:Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;

    .line 19
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/LoadingViewAdapter;->viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

    .line 20
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public getRowHeightInPx()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, -0x2

    return v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/LoadingViewAdapter;->viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

    const-class v1, Lcom/netflix/mediaclient/android/fragment/LoadingView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;->pop(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 40
    if-eqz v0, :cond_0

    .line 46
    :goto_0
    return-object v0

    .line 44
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/android/fragment/LoadingView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/LoadingViewAdapter;->callbacks:Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;->getActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/fragment/LoadingView;-><init>(Landroid/content/Context;)V

    .line 45
    const-string/jumbo v1, "LoadingFragmentPagerAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Creating view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hasMoreData()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateRequestId()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public refreshData(Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public restoreFromMemento(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public saveToMemento()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverlapPages()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public trackPresentation(I)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method
