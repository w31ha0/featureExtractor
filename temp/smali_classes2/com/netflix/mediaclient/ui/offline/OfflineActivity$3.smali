.class Lcom/netflix/mediaclient/ui/offline/OfflineActivity$3;
.super Ljava/lang/Object;
.source "OfflineActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/offline/OfflineActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/OfflineActivity;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineActivity$3;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineActivity$3;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineActivity$3;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->switchToEditMode(Z)V

    .line 214
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineActivity$3;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->invalidateOptionsMenu()V

    .line 216
    :cond_0
    return v1
.end method
