.class Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler$1;
.super Ljava/lang/Object;
.source "MdxErrorHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler$1;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "https://help.netflix.com/en/node/12407"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler$1;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->access$000(Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler$1;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->access$000(Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler$1;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->access$000(Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler$1;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->access$100(Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Unable to launchHelp"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
