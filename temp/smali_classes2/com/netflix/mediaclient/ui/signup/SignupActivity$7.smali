.class Lcom/netflix/mediaclient/ui/signup/SignupActivity$7;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$7;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 434
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Timeout triggered, switching to LoginActivity"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$7;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$400(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$7;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$7;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->startNextActivity(Landroid/content/Intent;)V

    .line 437
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$7;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->finish()V

    .line 439
    :cond_0
    return-void
.end method
