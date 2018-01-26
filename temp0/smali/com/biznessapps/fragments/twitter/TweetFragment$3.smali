.class Lcom/biznessapps/fragments/twitter/TweetFragment$3;
.super Ljava/lang/Object;
.source "TweetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/twitter/TweetFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/twitter/TweetFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/twitter/TweetFragment;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/biznessapps/fragments/twitter/TweetFragment$3;->this$0:Lcom/biznessapps/fragments/twitter/TweetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/biznessapps/fragments/twitter/TweetFragment$3;->this$0:Lcom/biznessapps/fragments/twitter/TweetFragment;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/twitter/TweetFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v0, "hashtagsIntent":Landroid/content/Intent;
    const-string v1, "TAB_LABEL"

    iget-object v2, p0, Lcom/biznessapps/fragments/twitter/TweetFragment$3;->this$0:Lcom/biznessapps/fragments/twitter/TweetFragment;

    invoke-virtual {v2}, Lcom/biznessapps/fragments/twitter/TweetFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_LABEL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "HASH_TAGS_LIST_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v1, "CHILDREN_TAB_LABEL"

    const-string v2, "hashTags"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/biznessapps/fragments/twitter/TweetFragment$3;->this$0:Lcom/biznessapps/fragments/twitter/TweetFragment;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/biznessapps/fragments/twitter/TweetFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 161
    return-void
.end method
