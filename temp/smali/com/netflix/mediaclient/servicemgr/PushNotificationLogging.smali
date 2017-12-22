.class public interface abstract Lcom/netflix/mediaclient/servicemgr/PushNotificationLogging;
.super Ljava/lang/Object;
.source "PushNotificationLogging.java"


# static fields
.field public static final ACTIONS:[Ljava/lang/String;

.field public static final PUSH_NOTIFICATION_EVENT:Ljava/lang/String; = "event"

.field public static final PUSH_NOTIFICATION_PRESENTED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_PUSH_NOTIFICATION_PRESENTED"

.field public static final PUSH_NOTIFICATION_RECEIVED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_PUSH_NOTIFICATION_RECEIVED"

.field public static final PUSH_NOTIFICATION_RESOLVED:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LOG_PUSH_NOTIFICATION_RESOLVED"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_PUSH_NOTIFICATION_PRESENTED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_PUSH_NOTIFICATION_RESOLVED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_PUSH_NOTIFICATION_RECEIVED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PushNotificationLogging;->ACTIONS:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract fireEvent(Lcom/netflix/mediaclient/servicemgr/PushNotificationLogging$PushNotificationDiscreteEvent;)V
.end method
