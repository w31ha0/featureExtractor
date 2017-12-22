.class Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$9;
.super Ljava/lang/Object;
.source "UserMessageAreaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

.field final synthetic val$handler:Lcom/netflix/mediaclient/ui/home/AccountHandler;

.field final synthetic val$timeoutStatus:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic val$umaCta:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;Lcom/netflix/mediaclient/ui/home/AccountHandler;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$9;->this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$9;->val$handler:Lcom/netflix/mediaclient/ui/home/AccountHandler;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$9;->val$timeoutStatus:Lcom/netflix/mediaclient/android/app/Status;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$9;->val$umaCta:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 388
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$9;->val$handler:Lcom/netflix/mediaclient/ui/home/AccountHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$9;->val$timeoutStatus:Lcom/netflix/mediaclient/android/app/Status;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$9;->val$umaCta:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->action()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/home/AccountHandler;->handle(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    .line 389
    return-void
.end method
