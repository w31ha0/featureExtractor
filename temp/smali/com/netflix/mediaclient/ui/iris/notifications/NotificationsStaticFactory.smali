.class public Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsStaticFactory;
.super Ljava/lang/Object;
.source "NotificationsStaticFactory.java"


# static fields
.field private static final types:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;",
            "Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    sget-object v1, Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;->NEW_SEASON_ALERT:Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    new-instance v2, Lcom/netflix/mediaclient/ui/iris/notifications/type/NewSeasonAlert;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/iris/notifications/type/NewSeasonAlert;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsStaticFactory;->types:Ljava/util/Map;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNotificationByType(Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;)Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsStaticFactory;->types:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;

    return-object v0
.end method
