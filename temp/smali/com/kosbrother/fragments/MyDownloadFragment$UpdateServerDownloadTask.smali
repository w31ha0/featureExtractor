.class Lcom/kosbrother/fragments/MyDownloadFragment$UpdateServerDownloadTask;
.super Landroid/os/AsyncTask;
.source "MyDownloadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kosbrother/fragments/MyDownloadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateServerDownloadTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kosbrother/fragments/MyDownloadFragment;


# direct methods
.method private constructor <init>(Lcom/kosbrother/fragments/MyDownloadFragment;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/kosbrother/fragments/MyDownloadFragment$UpdateServerDownloadTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 142
    const-string v0, ""

    .line 143
    .local v0, "collect_novels_str":Ljava/lang/String;
    iget-object v2, p0, Lcom/kosbrother/fragments/MyDownloadFragment$UpdateServerDownloadTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    invoke-static {v2}, Lcom/kosbrother/fragments/MyDownloadFragment;->access$100(Lcom/kosbrother/fragments/MyDownloadFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/novel/reader/entity/Novel;

    .line 144
    .local v1, "novel":Lcom/novel/reader/entity/Novel;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    goto :goto_0

    .line 147
    .end local v1    # "novel":Lcom/novel/reader/entity/Novel;
    :cond_0
    iget-object v2, p0, Lcom/kosbrother/fragments/MyDownloadFragment$UpdateServerDownloadTask;->this$0:Lcom/kosbrother/fragments/MyDownloadFragment;

    invoke-static {v2}, Lcom/kosbrother/fragments/MyDownloadFragment;->access$200(Lcom/kosbrother/fragments/MyDownloadFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/novel/reader/api/NovelAPI;->sendDownloadedNovels(Ljava/lang/String;Ljava/lang/String;)Z

    .line 148
    const/4 v2, 0x0

    return-object v2
.end method
