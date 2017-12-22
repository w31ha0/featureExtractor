.class Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$10;
.super Ljava/lang/Object;
.source "CastPlayerViewsAbs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)V
    .locals 0

    .prologue
    .line 894
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$10;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$10;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$10;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    const-string/jumbo v1, "Activity destroyed, can\'t show volume frag"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->access$500(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;Ljava/lang/String;)V

    .line 910
    :goto_0
    return-void

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$10;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->access$000(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->isRemotePlayerReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 903
    const-string/jumbo v0, "MdxMiniPlayerViews"

    const-string/jumbo v1, "Remote player is not ready - can\'t get/set volume"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 907
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;->newInstance()Lcom/netflix/mediaclient/ui/common/VolumeDialogFrag;

    move-result-object v0

    .line 908
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->setCancelable(Z)V

    .line 909
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$10;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Landroid/app/DialogFragment;)Z

    goto :goto_0
.end method
