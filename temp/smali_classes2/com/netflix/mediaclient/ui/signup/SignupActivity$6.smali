.class Lcom/netflix/mediaclient/ui/signup/SignupActivity$6;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

.field final synthetic val$isReactNative:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Z)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$6;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$6;->val$isReactNative:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$6;->val$isReactNative:Z

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$6;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->clearCookies()V

    .line 405
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$6;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->finish()V

    .line 409
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$6;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->reload(Z)V

    goto :goto_0
.end method
