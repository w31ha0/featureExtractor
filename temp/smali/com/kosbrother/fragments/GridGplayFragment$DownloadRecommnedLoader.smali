.class public Lcom/kosbrother/fragments/GridGplayFragment$DownloadRecommnedLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "GridGplayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kosbrother/fragments/GridGplayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadRecommnedLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/novel/reader/entity/Category;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 135
    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/kosbrother/fragments/GridGplayFragment$DownloadRecommnedLoader;->loadInBackground()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    invoke-static {}, Lcom/novel/reader/api/NovelAPI;->getRecommendCategoryWithNovels()Ljava/util/ArrayList;

    move-result-object v0

    .line 140
    .local v0, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Category;>;"
    return-object v0
.end method
