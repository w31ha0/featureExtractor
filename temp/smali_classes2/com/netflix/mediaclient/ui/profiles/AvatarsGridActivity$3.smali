.class Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$3;
.super Ljava/lang/Object;
.source "AvatarsGridActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$3;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 251
    if-nez p3, :cond_0

    .line 252
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$3;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$500(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    move-result-object v0

    .line 257
    :goto_0
    const-string/jumbo v2, "avatar_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 258
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$3;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->setResult(ILandroid/content/Intent;)V

    .line 259
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$3;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->finish()V

    .line 260
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$3;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$100(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    goto :goto_0
.end method
