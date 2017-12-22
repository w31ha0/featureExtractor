.class Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;
.super Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;
.source "GalleryLoMoFrag.java"


# static fields
.field private static final BATCH:I = 0x28


# instance fields
.field protected fragment:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

.field protected hasMoreData:Z

.field queryObject:Ljava/lang/Object;

.field protected startIndex:I

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;ZILcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V
    .locals 1

    .prologue
    .line 272
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

    .line 273
    invoke-direct {p0, p3, p4, p5}, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;-><init>(ZILcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    .line 267
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->startIndex:I

    .line 274
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->fragment:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

    .line 275
    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 279
    iput v1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->startIndex:I

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->queryObject:Ljava/lang/Object;

    .line 281
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;->clearData()V

    .line 282
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->setEmptyVisibility(Z)V

    .line 283
    return-void
.end method

.method fetchData()V
    .locals 9

    .prologue
    .line 297
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->setEmptyVisibility(Z)V

    .line 298
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v6

    .line 299
    if-eqz v6, :cond_0

    .line 300
    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->startIndex:I

    add-int/lit8 v5, v0, 0x27

    .line 304
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->queryObject:Ljava/lang/Object;

    .line 305
    iget-object v7, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->fragment:Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

    iget v8, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->startIndex:I

    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter$GenresVideoFetchCallback;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->queryObject:Ljava/lang/Object;

    const-string/jumbo v3, "GalleryLoMoFrag"

    iget v4, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->startIndex:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter$GenresVideoFetchCallback;-><init>(Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;Ljava/lang/Object;Ljava/lang/String;II)V

    invoke-virtual {v7, v6, v8, v5, v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->fetchListData(Lcom/netflix/mediaclient/servicemgr/ServiceManager;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)V

    .line 308
    :cond_0
    return-void
.end method

.method protected onPostItemViewBind(I)V
    .locals 1

    .prologue
    .line 287
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;->onPostItemViewBind(I)V

    .line 288
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->hasMoreData:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    if-ne p1, v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag$ProgressiveAdapter;->fetchData()V

    .line 294
    :cond_0
    return-void
.end method
