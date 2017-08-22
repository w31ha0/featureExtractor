.class public Lcom/kosbrother/fragments/CategoryRecommendFragment$NovelLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "CategoryRecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kosbrother/fragments/CategoryRecommendFragment;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "myPage"    # I

    .prologue
    .line 207
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 208
    iput p2, p0, Lcom/kosbrother/fragments/CategoryRecommendFragment$NovelLoader;->myPage:I

    .line 209
    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/kosbrother/fragments/CategoryRecommendFragment$NovelLoader;->loadInBackground()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/ArrayList;
    .locals 3
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
    .line 214
    sget v1, Lcom/novel/reader/CategoryActivity;->categoryId:I

    iget v2, p0, Lcom/kosbrother/fragments/CategoryRecommendFragment$NovelLoader;->myPage:I

    invoke-static {v1, v2}, Lcom/novel/reader/api/NovelAPI;->getCategoryRecommendNovels(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 215
    .local v0, "moreNovels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    return-object v0
.end method
