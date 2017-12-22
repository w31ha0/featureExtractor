.class Lcom/netflix/mediaclient/ui/launch/LaunchActivity$2$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/launch/LaunchActivity$2;

.field final synthetic val$res:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity$2;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$2$1;->this$1:Lcom/netflix/mediaclient/ui/launch/LaunchActivity$2;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$2$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 499
    const-string/jumbo v0, "Sign in via intent finished. "

    invoke-static {v0}, Lcom/netflix/mediaclient/Log;->partner(Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$2$1;->this$1:Lcom/netflix/mediaclient/ui/launch/LaunchActivity$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$2;->this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$2$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->access$400(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/netflix/mediaclient/android/app/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    .line 501
    return-void
.end method
