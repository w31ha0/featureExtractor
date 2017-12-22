.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;
.super Landroid/os/Handler;
.source "OfflineAgent.java"


# static fields
.field static final TYPE_AGENT_DESTROY:I = 0x5

.field static final TYPE_AGENT_INIT:I = 0x0

.field static final TYPE_CHANGE_CURRENT_OFFLINE_STORAGE_VOLUME:I = 0xb

.field static final TYPE_CREATE:I = 0x1

.field static final TYPE_DELETE:I = 0x2

.field static final TYPE_DELETE_ALL_PLAYABLES:I = 0x8

.field static final TYPE_DELETE_AND_TRY_AGAIN:I = 0xe

.field static final TYPE_DELETE_PLAYABLES:I = 0xd

.field static final TYPE_DOWNLOAD_MAINTENANCE_JOB:I = 0x7

.field static final TYPE_DOWNLOAD_RESUME_JOB:I = 0x6

.field static final TYPE_HANDLE_MAINTENANCE_DONE:I = 0xa

.field static final TYPE_NOTIFY_PLAYABLE_PLAYBACK_START_30SEC:I = 0x9

.field static final TYPE_PAUSE:I = 0x3

.field static final TYPE_RECALCULATE_OSV_SPACE_USAGE:I = 0xc

.field static final TYPE_RESUME:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 1415
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    .line 1416
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1417
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1420
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1471
    :goto_0
    return-void

    .line 1422
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$3100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    goto :goto_0

    .line 1425
    :pswitch_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$3200(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;)V

    goto :goto_0

    .line 1428
    :pswitch_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$3300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;)V

    goto :goto_0

    .line 1431
    :pswitch_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$3400(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;)V

    goto :goto_0

    .line 1434
    :pswitch_4
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$3500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;)V

    goto :goto_0

    .line 1437
    :pswitch_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$3600(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    goto :goto_0

    .line 1440
    :pswitch_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$3700(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    goto :goto_0

    .line 1443
    :pswitch_7
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$3800(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    goto :goto_0

    .line 1446
    :pswitch_8
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$3900(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Z)V

    goto :goto_0

    .line 1449
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 1450
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$4000(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/Long;)V

    goto :goto_0

    .line 1453
    :pswitch_a
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$4100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    .line 1454
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$4202(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;)Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;

    goto :goto_0

    .line 1457
    :pswitch_b
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$4300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;I)V

    goto :goto_0

    .line 1460
    :pswitch_c
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$4400(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    goto :goto_0

    .line 1464
    :pswitch_d
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$4500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/util/List;)V

    goto :goto_0

    .line 1467
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;

    .line 1468
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iget-object v2, v0, Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;->mPlayableId:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$3300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/agent/DeleteAndTryAgainRequest;)V

    goto/16 :goto_0

    .line 1420
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
