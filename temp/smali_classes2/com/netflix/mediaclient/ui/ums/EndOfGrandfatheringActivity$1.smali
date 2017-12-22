.class Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity$1;
.super Ljava/lang/Object;
.source "EndOfGrandfatheringActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity$1;->this$0:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 137
    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "Manager is here!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity$1;->this$0:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-static {v0, p1, p2}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->access$000(Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 139
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 143
    const-string/jumbo v0, "eog"

    const-string/jumbo v1, "Netflix service is not fully initialized"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method
