.class public Lcom/novel/reader/MyDownloadArticleActivity$ArticleLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "MyDownloadArticleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novel/reader/MyDownloadArticleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArticleLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/novel/reader/entity/Article;",
        ">;>;"
    }
.end annotation


# instance fields
.field novelId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "novelId"    # I

    .prologue
    .line 435
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 436
    iput p2, p0, Lcom/novel/reader/MyDownloadArticleActivity$ArticleLoader;->novelId:I

    .line 437
    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/novel/reader/MyDownloadArticleActivity$ArticleLoader;->loadInBackground()Ljava/util/ArrayList;

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
            "Lcom/novel/reader/entity/Article;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    iget v0, p0, Lcom/novel/reader/MyDownloadArticleActivity$ArticleLoader;->novelId:I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/novel/reader/MyDownloadArticleActivity$ArticleLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/novel/reader/api/NovelAPI;->getDownloadedNovelArticles(IZLandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
