.class Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$9;
.super Ljava/lang/Object;
.source "ProfileDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$9;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 371
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$9;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$2100(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    const-string/jumbo v0, "ProfileDetailsActivity"

    const-string/jumbo v1, "Profile avatar was touched when current avatar data is not ready...ignoring..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$9;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$9;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$500(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$9;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$700(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->getStartIntent(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$9;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
