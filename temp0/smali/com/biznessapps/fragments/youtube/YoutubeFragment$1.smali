.class Lcom/biznessapps/fragments/youtube/YoutubeFragment$1;
.super Ljava/lang/Object;
.source "YoutubeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/youtube/YoutubeFragment;->getOnClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/youtube/YoutubeFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/youtube/YoutubeFragment;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/biznessapps/fragments/youtube/YoutubeFragment$1;->this$0:Lcom/biznessapps/fragments/youtube/YoutubeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v3, p0, Lcom/biznessapps/fragments/youtube/YoutubeFragment$1;->this$0:Lcom/biznessapps/fragments/youtube/YoutubeFragment;

    invoke-static {v3}, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->access$000(Lcom/biznessapps/fragments/youtube/YoutubeFragment;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 62
    iget-object v3, p0, Lcom/biznessapps/fragments/youtube/YoutubeFragment$1;->this$0:Lcom/biznessapps/fragments/youtube/YoutubeFragment;

    invoke-static {v3}, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->access$000(Lcom/biznessapps/fragments/youtube/YoutubeFragment;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "uploads/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 63
    .local v0, "idIndex":I
    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    .line 64
    const-string v3, "uploads/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 65
    iget-object v3, p0, Lcom/biznessapps/fragments/youtube/YoutubeFragment$1;->this$0:Lcom/biznessapps/fragments/youtube/YoutubeFragment;

    invoke-static {v3}, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->access$000(Lcom/biznessapps/fragments/youtube/YoutubeFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 66
    iget-object v3, p0, Lcom/biznessapps/fragments/youtube/YoutubeFragment$1;->this$0:Lcom/biznessapps/fragments/youtube/YoutubeFragment;

    invoke-static {v3}, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->access$000(Lcom/biznessapps/fragments/youtube/YoutubeFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "videoId":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, "videoClient":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://youtube.com/watch?v="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 69
    iget-object v3, p0, Lcom/biznessapps/fragments/youtube/YoutubeFragment$1;->this$0:Lcom/biznessapps/fragments/youtube/YoutubeFragment;

    invoke-virtual {v3, v1}, Lcom/biznessapps/fragments/youtube/YoutubeFragment;->startActivity(Landroid/content/Intent;)V

    .line 74
    .end local v0    # "idIndex":I
    .end local v1    # "videoClient":Landroid/content/Intent;
    .end local v2    # "videoId":Ljava/lang/String;
    :cond_0
    return-void
.end method
