.class Lcom/novel/reader/MyDownloadArticleActivity$3;
.super Ljava/lang/Object;
.source "MyDownloadArticleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/MyDownloadArticleActivity;->setViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/MyDownloadArticleActivity;


# direct methods
.method constructor <init>(Lcom/novel/reader/MyDownloadArticleActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/MyDownloadArticleActivity;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/novel/reader/MyDownloadArticleActivity$3;->this$0:Lcom/novel/reader/MyDownloadArticleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/novel/reader/MyDownloadArticleActivity$3;->this$0:Lcom/novel/reader/MyDownloadArticleActivity;

    const-class v3, Lcom/novel/reader/DownloadActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v1, "intent_to_download":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 173
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "NovelId"

    iget-object v3, p0, Lcom/novel/reader/MyDownloadArticleActivity$3;->this$0:Lcom/novel/reader/MyDownloadArticleActivity;

    invoke-static {v3}, Lcom/novel/reader/MyDownloadArticleActivity;->access$000(Lcom/novel/reader/MyDownloadArticleActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    const-string v2, "NovelName"

    iget-object v3, p0, Lcom/novel/reader/MyDownloadArticleActivity$3;->this$0:Lcom/novel/reader/MyDownloadArticleActivity;

    invoke-static {v3}, Lcom/novel/reader/MyDownloadArticleActivity;->access$100(Lcom/novel/reader/MyDownloadArticleActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 176
    iget-object v2, p0, Lcom/novel/reader/MyDownloadArticleActivity$3;->this$0:Lcom/novel/reader/MyDownloadArticleActivity;

    invoke-virtual {v2, v1}, Lcom/novel/reader/MyDownloadArticleActivity;->startActivity(Landroid/content/Intent;)V

    .line 177
    return-void
.end method
