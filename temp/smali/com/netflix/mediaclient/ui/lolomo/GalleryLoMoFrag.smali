.class public Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;
.super Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;
.source "GalleryLoMoFrag.java"


# static fields
.field private static final EXTRA_LOMO_PARCEL:Ljava/lang/String; = "lomo_parcel"

.field public static final MY_LIST_FAKE_ID:Ljava/lang/String; = "MyListFakeId"

.field private static final TAG:Ljava/lang/String; = "GalleryLoMoFrag"


# instance fields
.field protected adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

.field protected lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

.field protected numColumns:I

.field protected recyclerView:Landroid/support/v7/widget/RecyclerView;

.field protected registeredReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;-><init>()V

    return-void
.end method

.method public static createGalleryFragment(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;
    .locals 4

    .prologue
    .line 60
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;-><init>()V

    .line 62
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 63
    const-string/jumbo v2, "list_id"

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string/jumbo v2, "is_genre_list"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    const-string/jumbo v2, "lomo_parcel"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 66
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->setArguments(Landroid/os/Bundle;)V

    .line 68
    return-object v0
.end method

.method private setNumColums()V
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->getGalleryLomoGenreNumColumns(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->numColumns:I

    .line 152
    return-void
.end method

.method private setupRecyclerViewAdapter()V
    .locals 6

    .prologue
    .line 187
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;

    const/4 v3, 0x0

    iget v4, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->numColumns:I

    new-instance v5, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$3;

    invoke-direct {v5, p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$3;-><init>(Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;)V

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;-><init>(Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;ZILcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ViewUtils;->createActionBarDummyView(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->addHeaderView(Landroid/view/View;)V

    .line 213
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0186

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 214
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 215
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 216
    return-void
.end method

.method private setupRecyclerViewLayoutManager()V
    .locals 4

    .prologue
    .line 164
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->numColumns:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 165
    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$2;-><init>(Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 182
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0184

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget v3, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->numColumns:I

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 184
    return-void
.end method

.method public static supportsListId(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "MyListFakeId"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private unregisterBroadcastReceiver()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->registeredReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->registeredReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->registeredReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method protected fetchListData(Lcom/netflix/mediaclient/servicemgr/ServiceManager;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 220
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->listId:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 225
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    move-object v7, p4

    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 227
    :goto_1
    return-void

    .line 220
    :pswitch_0
    const-string/jumbo v2, "MyListFakeId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v4

    goto :goto_0

    .line 222
    :pswitch_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-interface {v0, p2, p3, v4, p4}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchIQVideos(IIZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_1

    .line 220
    :pswitch_data_0
    .packed-switch 0x25dca47a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f03007e

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0300ea

    goto :goto_0
.end method

.method public initArgs()V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    const-string/jumbo v1, "list_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->listId:Ljava/lang/String;

    .line 75
    const-string/jumbo v1, "lomo_parcel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 77
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->onDestroyView()V

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->clearData()V

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    check-cast v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->fetchData()V

    .line 104
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->unregisterBroadcastReceiver()V

    .line 105
    return-void
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 81
    const-string/jumbo v0, "GalleryLoMoFrag"

    const-string/jumbo v1, "onManagerReady"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const-string/jumbo v0, "GalleryLoMoFrag"

    const-string/jumbo v1, "Manager status code not okay"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->initArgs()V

    .line 90
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->registeredReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->registerBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->registeredReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->clearData()V

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    check-cast v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->fetchData()V

    goto :goto_0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->showLoadingView()V

    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->clearData()V

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    check-cast v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->fetchData()V

    .line 138
    return-void
.end method

.method protected registerBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 4

    .prologue
    .line 108
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->listId:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 122
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 108
    :pswitch_0
    const-string/jumbo v2, "MyListFakeId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 110
    :pswitch_1
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$1;-><init>(Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;)V

    .line 118
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.BA_IQ_REFRESH"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_1

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x25dca47a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public setEmptyVisibility(Z)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 230
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->getContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x7f1001e1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/EmptyStateView;

    .line 234
    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 235
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->getContentView()Landroid/widget/FrameLayout;

    move-result-object v1

    const v3, 0x7f10020d

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 236
    if-eqz v1, :cond_4

    .line 237
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/EmptyStateView;

    move-object v1, v0

    .line 240
    :goto_1
    if-eqz v1, :cond_0

    .line 241
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarHeight()I

    move-result v3

    invoke-static {v1, v0, v3}, Lcom/netflix/android/widgetry/utils/UiUtils;->setPadding(Landroid/view/View;II)V

    .line 242
    if-eqz p1, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->setVisibility(I)V

    .line 243
    if-eqz p1, :cond_0

    .line 244
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->listId:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_2
    move v2, v0

    :goto_3
    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 246
    :pswitch_0
    const v0, 0x7f0200f6

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->setIconDrawable(I)V

    .line 247
    const v0, 0x7f0901cc

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->setMessageText(Ljava/lang/String;)V

    .line 248
    const v0, 0x7f0901cb

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->setButtonText(Ljava/lang/String;)V

    .line 249
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$4;-><init>(Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;)V

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/EmptyStateView;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 242
    :cond_3
    const/16 v0, 0x8

    goto :goto_2

    .line 244
    :pswitch_1
    const-string/jumbo v4, "MyListFakeId"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_4
    move-object v1, v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x25dca47a
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected setupFocushandler()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method protected setupMainView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 156
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 157
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->setNumColums()V

    .line 159
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->setupRecyclerViewLayoutManager()V

    .line 160
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->setupRecyclerViewAdapter()V

    .line 161
    return-void
.end method
