.class Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$1;
.super Landroid/content/BroadcastReceiver;
.source "RoleDetailsFrag.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$1;->this$1:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 696
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$1;->this$1:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$1;->this$1:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    .line 701
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$1;->this$1:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 708
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$1;->this$1:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView$1;->this$1:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorRelatedView;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 705
    :pswitch_1
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.RDP_CLOSE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x68f98489
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
