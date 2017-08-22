.class public Lcom/kosbrother/fragments/IndexNovelFragment$NovelLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "IndexNovelFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kosbrother/fragments/IndexNovelFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NovelLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/novel/reader/entity/Novel;",
        ">;>;"
    }
.end annotation


# instance fields
.field private myPage:I

.field private novelFragment:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "novelFragment"    # I
    .param p3, "myPage"    # I

    .prologue
    .line 210
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 211
    iput p2, p0, Lcom/kosbrother/fragments/IndexNovelFragment$NovelLoader;->novelFragment:I

    .line 212
    iput p3, p0, Lcom/kosbrother/fragments/IndexNovelFragment$NovelLoader;->myPage:I

    .line 213
    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/kosbrother/fragments/IndexNovelFragment$NovelLoader;->loadInBackground()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 220
    .local v0, "moreNovels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    iget v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment$NovelLoader;->novelFragment:I

    packed-switch v1, :pswitch_data_0

    .line 237
    :goto_0
    return-object v0

    .line 222
    :pswitch_0
    iget v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment$NovelLoader;->myPage:I

    invoke-static {v1}, Lcom/novel/reader/api/NovelAPI;->getHotNovels(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 223
    goto :goto_0

    .line 225
    :pswitch_1
    iget v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment$NovelLoader;->myPage:I

    invoke-static {v1}, Lcom/novel/reader/api/NovelAPI;->getThisMonthHotNovels(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 226
    goto :goto_0

    .line 228
    :pswitch_2
    iget v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment$NovelLoader;->myPage:I

    invoke-static {v1}, Lcom/novel/reader/api/NovelAPI;->getThisWeekHotNovels(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 229
    goto :goto_0

    .line 231
    :pswitch_3
    iget v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment$NovelLoader;->myPage:I

    invoke-static {v1}, Lcom/novel/reader/api/NovelAPI;->getLatestUpdateNovels(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 232
    goto :goto_0

    .line 234
    :pswitch_4
    iget v1, p0, Lcom/kosbrother/fragments/IndexNovelFragment$NovelLoader;->myPage:I

    invoke-static {v1}, Lcom/novel/reader/api/NovelAPI;->getNewUploadedNovels(I)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
