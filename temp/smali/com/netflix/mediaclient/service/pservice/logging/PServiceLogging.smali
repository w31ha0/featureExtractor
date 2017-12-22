.class public final Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;
.super Ljava/lang/Object;
.source "PServiceLogging.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field public static final EXTRA_PREAPP_EVENT_TIME:Ljava/lang/String; = "eventTime"

.field public static final EXTRA_PREAPP_WIDGET_DATA:Ljava/lang/String; = "widgetData"

.field private static final PServiceLoggingLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->PServiceLoggingLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private static getStoredLogEventsString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    const-string/jumbo v0, "pservice_actions_to_log"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWidgetSize(Landroid/content/Context;I)Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;
    .locals 6

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;

    const-string/jumbo v2, "appWidgetMinWidth"

    .line 50
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "appWidgetMaxWidth"

    .line 51
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "appWidgetMinHeight"

    .line 52
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "appWidgetMaxHeight"

    .line 53
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;-><init>(IIII)V

    .line 49
    return-object v1
.end method

.method private static putLogEvents(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 113
    const-string/jumbo v0, "pservice_actions_to_log"

    invoke-static {p0, v0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 114
    return-void
.end method

.method private static readAndClearStoredLog(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    .line 70
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->PServiceLoggingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->getStoredLogEventsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 72
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->putLogEvents(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    monitor-exit v1

    .line 74
    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static reportStoredLogEvents(Landroid/content/Context;Z)V
    .locals 6

    .prologue
    .line 82
    invoke-static {p0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->readAndClearStoredLog(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->createFromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->getWidgetEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent;

    .line 87
    sget-object v2, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging$1;->$SwitchMap$com$netflix$mediaclient$service$pservice$logging$PServiceWidgetLogEvent$WidgetAction:[I

    iget-object v3, v0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent;->action:Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 89
    :pswitch_0
    iget-object v2, v0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent;->widgetSize:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;

    invoke-static {p0, v2, p1}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;->createInstance(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;Z)Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;->toJsonString()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, v0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent;->timeInMs:J

    invoke-static {p0, v2, v4, v5}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportPreappAddWidget(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v2, v0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent;->widgetSize:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;

    invoke-static {p0, v2, p1}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;->createInstance(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;Z)Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;

    move-result-object v2

    .line 94
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;->toJsonString()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, v0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent;->timeInMs:J

    invoke-static {p0, v2, v4, v5}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportPreappDeleteWidget(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 97
    :pswitch_2
    iget-object v0, v0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent;->widgetSize:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;

    invoke-static {p0, v0, p1}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;->createInstance(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;Z)Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;

    move-result-object v0

    .line 98
    new-instance v2, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->GO_TO_NEXT:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;-><init>(Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;)V

    .line 99
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->androidWidgetCommand:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    invoke-static {p0, v3, v0, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportPreAppWidgetActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;)V

    .line 100
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportPreAppWidgetActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    goto :goto_0

    .line 106
    :cond_0
    return-void

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static storeLogEvent(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;-><init>(IIII)V

    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->storeLogEvent(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;)V

    .line 39
    return-void
.end method

.method public static storeLogEvent(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;I)V
    .locals 1

    .prologue
    .line 42
    invoke-static {p0, p2}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->getWidgetSize(Landroid/content/Context;I)Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->storeLogEvent(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;)V

    .line 43
    return-void
.end method

.method private static storeLogEvent(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;)V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent;-><init>(Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;)V

    .line 58
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->PServiceLoggingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->getStoredLogEventsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-static {v2}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->createFromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;

    move-result-object v2

    .line 61
    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->addWidgetEvent(Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent;)V

    .line 62
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->toJsonString()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->putLogEvents(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    monitor-exit v1

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
