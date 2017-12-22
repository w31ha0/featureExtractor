.class Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$2;
.super Ljava/lang/Object;
.source "PushNotificationAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$2;->this$0:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 536
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$2;->val$context:Landroid/content/Context;

    const-string/jumbo v1, "nf_notification_id_counter"

    invoke-static {}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->access$000()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putIntPref(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 537
    return-void
.end method
