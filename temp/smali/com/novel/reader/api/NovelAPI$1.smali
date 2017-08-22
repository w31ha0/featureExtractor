.class final Lcom/novel/reader/api/NovelAPI$1;
.super Landroid/os/AsyncTask;
.source "NovelAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/api/NovelAPI;->collecNovel(Lcom/novel/reader/entity/Novel;Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$db:Lcom/novel/db/SQLiteNovel;

.field final synthetic val$novel:Lcom/novel/reader/entity/Novel;


# direct methods
.method constructor <init>(Lcom/novel/reader/entity/Novel;Landroid/content/Context;Lcom/novel/db/SQLiteNovel;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/novel/reader/api/NovelAPI$1;->val$novel:Lcom/novel/reader/entity/Novel;

    iput-object p2, p0, Lcom/novel/reader/api/NovelAPI$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/novel/reader/api/NovelAPI$1;->val$db:Lcom/novel/db/SQLiteNovel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/novel/reader/api/NovelAPI$1;->val$novel:Lcom/novel/reader/entity/Novel;

    invoke-virtual {v0}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/novel/reader/api/NovelAPI$1;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/novel/reader/api/NovelAPI$1;->val$db:Lcom/novel/db/SQLiteNovel;

    iget-object v4, p0, Lcom/novel/reader/api/NovelAPI$1;->val$novel:Lcom/novel/reader/entity/Novel;

    invoke-virtual {v4}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/novel/db/SQLiteNovel;->isNovelDownloaded(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/novel/reader/api/NovelAPI;->downloadOrUpdateNovelInfo(ILandroid/content/Context;ZZ)Z

    .line 292
    return-object p1
.end method
