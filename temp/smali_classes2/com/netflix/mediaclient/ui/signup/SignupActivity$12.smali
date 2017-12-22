.class Lcom/netflix/mediaclient/ui/signup/SignupActivity$12;
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
    .line 1176
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$12;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1179
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Disabling webview visibility"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$12;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->webViewVisibility(Z)V

    .line 1181
    return-void
.end method
