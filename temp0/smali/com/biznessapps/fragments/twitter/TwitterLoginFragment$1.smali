.class Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;
.super Ljava/lang/Object;
.source "TwitterLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;->this$0:Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;

    iput-object p2, p0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 53
    :try_start_0
    new-instance v1, Ltwitter4j/TwitterFactory;

    invoke-direct {v1}, Ltwitter4j/TwitterFactory;-><init>()V

    invoke-virtual {v1}, Ltwitter4j/TwitterFactory;->getInstance()Ltwitter4j/Twitter;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->access$002(Ltwitter4j/Twitter;)Ltwitter4j/Twitter;

    .line 55
    invoke-static {}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->access$000()Ltwitter4j/Twitter;

    move-result-object v1

    const-string v2, "ibeMh2JAmmQw09B1nfap5Q"

    const-string v3, "dkomjgXm50XtNmWDn0FhJJpswGvdfIPqfYwfxqMar38"

    invoke-virtual {v1, v2, v3}, Ltwitter4j/Twitter;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->access$000()Ltwitter4j/Twitter;

    move-result-object v1

    invoke-static {}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltwitter4j/Twitter;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/http/RequestToken;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->access$102(Ltwitter4j/http/RequestToken;)Ltwitter4j/http/RequestToken;

    .line 59
    iget-object v1, p0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1$1;

    invoke-direct {v2, p0}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1$1;-><init>(Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1$2;

    invoke-direct {v2, p0}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1$2;-><init>(Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
