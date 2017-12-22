.class Lcom/netflix/mediaclient/ui/signup/SignupActivity$10;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "SignupActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V
    .locals 0

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$10;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$10;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    new-instance v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity$10$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$10$1;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity$10;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1021
    return-void
.end method
