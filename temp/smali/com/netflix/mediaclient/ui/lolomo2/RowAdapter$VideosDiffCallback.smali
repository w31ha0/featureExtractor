.class Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$VideosDiffCallback;
.super Landroid/support/v7/util/DiffUtil$Callback;
.source "RowAdapter.java"


# instance fields
.field final newVideos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TO;>;"
        }
    .end annotation
.end field

.field final oldVideosDiffHelper:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter",
            "<TT;TO;>.DiffHelper;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter",
            "<TT;TO;>.DiffHelper;",
            "Ljava/util/List",
            "<TO;>;)V"
        }
    .end annotation

    .prologue
    .line 378
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$VideosDiffCallback;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;

    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$Callback;-><init>()V

    .line 379
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$VideosDiffCallback;->oldVideosDiffHelper:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;

    .line 380
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$VideosDiffCallback;->newVideos:Ljava/util/List;

    .line 381
    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 3

    .prologue
    .line 402
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$VideosDiffCallback;->oldVideosDiffHelper:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;->getContent(I)Ljava/lang/String;

    move-result-object v1

    .line 403
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$VideosDiffCallback;->newVideos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;

    .line 404
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$VideosDiffCallback;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->toContentString(Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public areItemsTheSame(II)Z
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$VideosDiffCallback;->oldVideosDiffHelper:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;->getId(I)Ljava/lang/String;

    move-result-object v1

    .line 396
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$VideosDiffCallback;->newVideos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/branches/FalkorVideo;

    .line 397
    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public getNewListSize()I
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$VideosDiffCallback;->newVideos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$VideosDiffCallback;->oldVideosDiffHelper:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;->size()I

    move-result v0

    return v0
.end method
