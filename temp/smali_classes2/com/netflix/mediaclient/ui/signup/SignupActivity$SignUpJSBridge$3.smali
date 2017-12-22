.class Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$3;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$3;->this$1:Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$3;->this$1:Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1600(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    .line 718
    return-void
.end method
