.class public abstract Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;
.super Ljava/lang/Object;
.source "BasePaginatedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BasePaginatedAdapter"


# instance fields
.field protected final activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private currTitle:Ljava/lang/String;

.field protected data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected isRtlLocale:Z

.field private listViewPos:I

.field protected final numItemsPerPage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 64
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->computeNumItemsPerPage()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->numItemsPerPage:I

    .line 65
    invoke-static {}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->isCurrentLocaleRTL()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->isRtlLocale:Z

    .line 66
    return-void
.end method

.method private appendOrUpdate(Ljava/util/List;Ljava/util/List;IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<TT;>;IZ)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 134
    move v1, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 135
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    .line 136
    add-int v3, p3, v1

    .line 137
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 139
    iget-boolean v4, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->isRtlLocale:Z

    if-eqz v4, :cond_0

    .line 140
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int v3, v4, v3

    add-int/lit8 v3, v3, -0x1

    .line 144
    if-gez v3, :cond_0

    move v3, v2

    .line 155
    :cond_0
    invoke-interface {p1, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 134
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 158
    :cond_1
    iget-boolean v3, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->isRtlLocale:Z

    if-eqz v3, :cond_2

    .line 162
    invoke-interface {p1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 164
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 169
    :cond_3
    if-nez p4, :cond_4

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->isRtlLocale:Z

    if-eqz v0, :cond_4

    .line 170
    const-string/jumbo v0, "BasePaginatedAdapter"

    const-string/jumbo v1, "All data is retrieved and RTL locale is in force. Check if we need to add empty items, just to push items whole way up to right"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->numItemsPerPage:I

    rem-int/2addr v0, v1

    .line 173
    if-lez v0, :cond_4

    .line 174
    iget v1, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->numItemsPerPage:I

    sub-int/2addr v1, v0

    move v0, v2

    .line 178
    :goto_2
    if-ge v0, v1, :cond_4

    .line 179
    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 183
    :cond_4
    return-void
.end method


# virtual methods
.method public appendData(Ljava/util/List;Ljava/lang/String;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            "IIZ)V"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->currTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->currTitle:Ljava/lang/String;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->currTitle:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->currTitle:Ljava/lang/String;

    .line 112
    :cond_1
    if-eqz p1, :cond_2

    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->data:Ljava/util/List;

    invoke-direct {p0, v0, p1, p3, p5}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->appendOrUpdate(Ljava/util/List;Ljava/util/List;IZ)V

    .line 130
    :cond_2
    return-void
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->data:Ljava/util/List;

    .line 190
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->currTitle:Ljava/lang/String;

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->listViewPos:I

    .line 192
    return-void
.end method

.method protected abstract computeNumItemsPerPage()I
.end method

.method protected computeNumPages()I
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->numItemsPerPage:I

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/MathUtils;->ceiling(II)I

    move-result v0

    return v0
.end method

.method protected abstract computeNumVideosToFetchPerBatch(I)I
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->computeNumPages()I

    move-result v0

    return v0
.end method

.method protected getCurrTitleFormatted()Ljava/lang/String;
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->currTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const-string/jumbo v0, ""

    .line 252
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->currTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataForPage(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->computeNumPages()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 225
    const/4 v0, 0x0

    .line 234
    :goto_0
    return-object v0

    .line 228
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->numItemsPerPage:I

    mul-int/2addr v0, p1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 229
    iget v1, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->numItemsPerPage:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 234
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->data:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected getListViewPos()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->listViewPos:I

    return v0
.end method

.method public getRowHeightInPx()I
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->computeViewPagerWidth(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->numItemsPerPage:I

    div-int/2addr v0, v1

    int-to-float v1, v0

    .line 77
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->useLolomoBoxArt()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3fb70a3d    # 1.43f

    :goto_0
    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 82
    return v0

    .line 77
    :cond_0
    const/high16 v0, 0x3f100000    # 0.5625f

    goto :goto_0
.end method

.method public getView(Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;I)Landroid/view/View;
    .locals 6

    .prologue
    .line 89
    invoke-virtual {p0, p3}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->getDataForPage(I)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->numItemsPerPage:I

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->getView(Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Ljava/util/List;IILcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getView(Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Ljava/util/List;IILcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;",
            "Ljava/util/List",
            "<TT;>;II",
            "Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public isLastItem(I)Z
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->computeNumPages()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreFromMemento(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter$Memento;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter$Memento",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter$Memento;->data:Ljava/util/List;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->data:Ljava/util/List;

    .line 204
    iget v0, p1, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter$Memento;->listViewPos:I

    iput v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->listViewPos:I

    .line 205
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter$Memento;->currTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->currTitle:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public saveToMemento()Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter$Memento;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter$Memento",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter$Memento;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->data:Ljava/util/List;

    iget v2, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->listViewPos:I

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->currTitle:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter$Memento;-><init>(Ljava/util/List;ILjava/lang/String;)V

    .line 199
    return-object v0
.end method

.method public setListViewPos(I)V
    .locals 0

    .prologue
    .line 242
    iput p1, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->listViewPos:I

    .line 243
    return-void
.end method

.method public trackPresentation(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;ILjava/lang/Boolean;)V
    .locals 6

    .prologue
    .line 256
    invoke-virtual {p0, p3}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->getDataForPage(I)Ljava/util/List;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 265
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 266
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    .line 267
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->isPresentationTrackingType(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    const/4 v1, 0x0

    .line 270
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->useLolomoBoxArt()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v5

    invoke-static {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->usesVerticalBoxArtType(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 271
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getBoxartId()Ljava/lang/String;

    move-result-object v0

    .line 273
    :goto_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 277
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget v0, p0, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->numItemsPerPage:I

    mul-int v4, p3, v0

    .line 285
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/UiLocation;->GENRE_LOLOMO:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    .line 290
    :goto_3
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getPresentationTracking()Lcom/netflix/mediaclient/servicemgr/PresentationTracking;

    move-result-object v0

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/PresentationTracking;->reportPresentation(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;Ljava/util/List;Ljava/util/List;ILcom/netflix/mediaclient/servicemgr/UiLocation;)V

    goto :goto_0

    .line 285
    :cond_4
    sget-object v5, Lcom/netflix/mediaclient/servicemgr/UiLocation;->HOME_LOLOMO:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method
