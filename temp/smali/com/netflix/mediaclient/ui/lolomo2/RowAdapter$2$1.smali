.class Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$2$1;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;
.source "RowAdapter.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$2;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$2;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$2$1;->this$1:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$2;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$2$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$2$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$2$1;->this$1:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$2$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$2$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, p1, v2}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;->refresh(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Landroid/content/Intent;)Z

    .line 171
    return-void
.end method
