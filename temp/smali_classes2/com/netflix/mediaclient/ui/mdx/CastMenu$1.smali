.class Lcom/netflix/mediaclient/ui/mdx/CastMenu$1;
.super Ljava/lang/Object;
.source "CastMenu.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/CastMenu;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/CastMenu;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastMenu;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->access$000(Lcom/netflix/mediaclient/ui/mdx/CastMenu;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastMenu;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->access$000(Lcom/netflix/mediaclient/ui/mdx/CastMenu;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getCastPlayerFrag()Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/MdxUtils;->createMdxMenuDialog(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastMenu$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastMenu;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/CastMenu;->access$000(Lcom/netflix/mediaclient/ui/mdx/CastMenu;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Landroid/app/Dialog;)V

    .line 87
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
