.class Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl$3;
.super Ljava/lang/Object;
.source "MaintenanceJobMgrImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl$3;->this$0:Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl$3;->this$0:Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;->access$100(Lcom/netflix/mediaclient/service/job/MaintenanceJobMgrImpl;)V

    .line 280
    return-void
.end method
