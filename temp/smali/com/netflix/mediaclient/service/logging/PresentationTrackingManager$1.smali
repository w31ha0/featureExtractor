.class Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$1;
.super Ljava/lang/Object;
.source "PresentationTrackingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

.field final synthetic val$trackable:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;

.field final synthetic val$uiLocation:Lcom/netflix/mediaclient/servicemgr/UiLocation;

.field final synthetic val$videoIds:Ljava/util/List;

.field final synthetic val$videoImageTypeIdentifierIds:Ljava/util/List;

.field final synthetic val$videoPos:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;Ljava/util/List;Ljava/util/List;ILcom/netflix/mediaclient/servicemgr/UiLocation;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$1;->this$0:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$1;->val$trackable:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$1;->val$videoIds:Ljava/util/List;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$1;->val$videoImageTypeIdentifierIds:Ljava/util/List;

    iput p5, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$1;->val$videoPos:I

    iput-object p6, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$1;->val$uiLocation:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 129
    new-instance v0, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$1;->val$trackable:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$1;->val$videoIds:Ljava/util/List;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$1;->val$videoImageTypeIdentifierIds:Ljava/util/List;

    iget v4, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$1;->val$videoPos:I

    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$1;->val$uiLocation:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/presentation/PresentationEvent;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;Ljava/util/List;Ljava/util/List;ILcom/netflix/mediaclient/servicemgr/UiLocation;)V

    .line 134
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$1;->this$0:Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;->access$000(Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager;)Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/PresentationTrackingManager$PresentationTrackingEventQueue;->post(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method
