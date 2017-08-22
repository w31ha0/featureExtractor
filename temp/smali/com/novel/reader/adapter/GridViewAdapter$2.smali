.class Lcom/novel/reader/adapter/GridViewAdapter$2;
.super Ljava/lang/Object;
.source "GridViewAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/adapter/GridViewAdapter;->showRecommendAppDialog(Lcom/novel/reader/entity/GameAPP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/adapter/GridViewAdapter;

.field final synthetic val$app:Lcom/novel/reader/entity/GameAPP;


# direct methods
.method constructor <init>(Lcom/novel/reader/adapter/GridViewAdapter;Lcom/novel/reader/entity/GameAPP;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/adapter/GridViewAdapter;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/novel/reader/adapter/GridViewAdapter$2;->this$0:Lcom/novel/reader/adapter/GridViewAdapter;

    iput-object p2, p0, Lcom/novel/reader/adapter/GridViewAdapter$2;->val$app:Lcom/novel/reader/entity/GameAPP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/novel/reader/adapter/GridViewAdapter$2;->val$app:Lcom/novel/reader/entity/GameAPP;

    iget-object v2, v2, Lcom/novel/reader/entity/GameAPP;->appStoreUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 145
    .local v0, "browseIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/novel/reader/adapter/GridViewAdapter$2;->this$0:Lcom/novel/reader/adapter/GridViewAdapter;

    invoke-static {v1}, Lcom/novel/reader/adapter/GridViewAdapter;->access$000(Lcom/novel/reader/adapter/GridViewAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 146
    new-instance v1, Lcom/novel/reader/adapter/GridViewAdapter$2$1;

    invoke-direct {v1, p0}, Lcom/novel/reader/adapter/GridViewAdapter$2$1;-><init>(Lcom/novel/reader/adapter/GridViewAdapter$2;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 152
    invoke-virtual {v1, v2}, Lcom/novel/reader/adapter/GridViewAdapter$2$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 154
    return-void
.end method
