.class Lcom/novel/reader/adapter/GridViewAppAdapter$2$1;
.super Landroid/os/AsyncTask;
.source "GridViewAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/adapter/GridViewAppAdapter$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/novel/reader/adapter/GridViewAppAdapter$2;


# direct methods
.method constructor <init>(Lcom/novel/reader/adapter/GridViewAppAdapter$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/novel/reader/adapter/GridViewAppAdapter$2;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/novel/reader/adapter/GridViewAppAdapter$2$1;->this$1:Lcom/novel/reader/adapter/GridViewAppAdapter$2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/novel/reader/adapter/GridViewAppAdapter$2$1;->this$1:Lcom/novel/reader/adapter/GridViewAppAdapter$2;

    iget-object v0, v0, Lcom/novel/reader/adapter/GridViewAppAdapter$2;->this$0:Lcom/novel/reader/adapter/GridViewAppAdapter;

    invoke-static {v0}, Lcom/novel/reader/adapter/GridViewAppAdapter;->access$000(Lcom/novel/reader/adapter/GridViewAppAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/novel/reader/adapter/GridViewAppAdapter$2$1;->this$1:Lcom/novel/reader/adapter/GridViewAppAdapter$2;

    iget-object v1, v1, Lcom/novel/reader/adapter/GridViewAppAdapter$2;->val$app:Lcom/novel/reader/entity/GameAPP;

    iget v1, v1, Lcom/novel/reader/entity/GameAPP;->appid:I

    invoke-static {v0, v1}, Lcom/novel/reader/api/NovelAPI;->sendClickInfo(Landroid/content/Context;I)V

    .line 135
    const/4 v0, 0x0

    return-object v0
.end method
