.class Lcom/netflix/mediaclient/ui/survey/ThanksFragment$1;
.super Ljava/lang/Object;
.source "ThanksFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/survey/ThanksFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/survey/ThanksFragment;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/survey/ThanksFragment$1;->this$0:Lcom/netflix/mediaclient/ui/survey/ThanksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/survey/ThanksFragment$1;->this$0:Lcom/netflix/mediaclient/ui/survey/ThanksFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/survey/ThanksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/survey/ThanksFragment$1;->this$0:Lcom/netflix/mediaclient/ui/survey/ThanksFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/survey/ThanksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/survey/ThanksFragment$1;->this$0:Lcom/netflix/mediaclient/ui/survey/ThanksFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/survey/ThanksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x10a0001

    const/high16 v2, 0x10a0000

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/survey/ThanksFragment$1;->this$0:Lcom/netflix/mediaclient/ui/survey/ThanksFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/survey/ThanksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 42
    :cond_0
    return-void
.end method
