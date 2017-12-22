.class Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$2;
.super Ljava/lang/Object;
.source "NotificationsFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

.field final synthetic val$playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field final synthetic val$position:I

.field final synthetic val$summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

.field final synthetic val$videoId:Ljava/lang/String;

.field final synthetic val$videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$2;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$2;->val$videoId:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$2;->val$playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$2;->val$videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$2;->val$summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    iput p6, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 465
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$2;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$2;->val$videoId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$2;->val$playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$2;->val$videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$1200(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 467
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$2;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->startPlay:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$2;->val$summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    iget v3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$2;->val$position:I

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$1300(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)V

    .line 468
    return-void
.end method
