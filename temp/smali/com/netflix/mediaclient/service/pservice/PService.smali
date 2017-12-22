.class public Lcom/netflix/mediaclient/service/pservice/PService;
.super Landroid/app/Service;
.source "PService.java"


# static fields
.field public static final ACTION_ACCOUNT_DEACTIVATED_FROM_PREAPP_AGENT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.ACTION_ACCOUNT_DEACTIVATED_FROM_PREAPP_AGENT"

.field public static final ACTION_ALL_MEMBER_UPDATED_FROM_PREAPP_AGENT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.ALL_MEMBER_UPDATED_FROM_PREAPP_AGENT"

.field public static final ACTION_CW_UPDATED_FROM_PREAPP_AGENT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.CW_UPDATED_FROM_PREAPP_AGENT"

.field public static final ACTION_DETAILS_1_FROM_PREAPP_WIDGET:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.DETAILS_1_FROM_PREAPP_WIDGET"

.field public static final ACTION_DETAILS_2_FROM_PREAPP_WIDGET:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.DETAILS_2_FROM_PREAPP_WIDGET"

.field public static final ACTION_DETAILS_3_FROM_PREAPP_WIDGET:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.DETAILS_3_FROM_PREAPP_WIDGET"

.field public static final ACTION_HOME_FROM_PREAPP_WIDGET:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.HOME_FROM_PREAPP_WIDGET"

.field public static final ACTION_INSTALLED_FROM_PREAPP_WIDGET:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.INSTALLED_FROM_PREAPP_WIDGET"

.field public static final ACTION_IQ_UPDATED_FROM_PREAPP_AGENT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.IQ_UPDATED_FROM_PREAPP_AGENT"

.field public static final ACTION_NON_MEMBER_UPDATED_FROM_PREAPP_AGENT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.NON_MEMBER_UPDATED_FROM_PREAPP_AGENT"

.field public static final ACTION_PLAYER_STATE_CHANGE:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.ACTION_PLAYER_STATE_CHANGE"

.field public static final ACTION_PLAY_1_FROM_PREAPP_WIDGET:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PLAY_1_FROM_PREAPP_WIDGET"

.field public static final ACTION_PLAY_2_FROM_PREAPP_WIDGET:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PLAY_2_FROM_PREAPP_WIDGET"

.field public static final ACTION_PLAY_3_FROM_PREAPP_WIDGET:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PLAY_3_FROM_PREAPP_WIDGET"

.field public static final ACTION_REFRESH_DATA:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.REFRESH_DATA"

.field public static final ACTION_REFRESH_FROM_PREAPP_WIDGET:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.REFRESH_FROM_PREAPP_WIDGET"

.field public static final ACTION_REFRESH_NON_MEMBER_DATA:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.REFRESH_NON_MEMBER_DATA"

.field public static final ACTION_RESIZED_FROM_PREAPP_WIDGET:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.ACTION_RESIZED_FROM_PREAPP_WIDGET"

.field public static final ACTION_UNINSTALL_FROM_PREAPP_WIDGET:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.UNINSTALL_FROM_PREAPP_WIDGET"

.field private static final ACTION_WIDGET_REFRESH_ALARM_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.service.pservice.ACTION_REFRESH_WIDGET"

.field public static final CATEGORY_FROM_PREAPP_AGENT:Ljava/lang/String; = "com.netflix.mediaclient.intent.category.CATEGORY_FROM_PREAPP_AGENT"

.field public static final CATEGORY_FROM_PREAPP_PSERVICE:Ljava/lang/String; = "com.netflix.mediaclient.intent.category.CATEGORY_FROM_PREAPP_PSERVICE"

.field public static final CATEGORY_FROM_PREAPP_WIDGET:Ljava/lang/String; = "com.netflix.mediaclient.intent.category.CATEGORY_FROM_PREAPP_WIDGET"

.field public static final EXTRA_ACTION_NAME:Ljava/lang/String; = "actionName"

.field public static final EXTRA_IS_PLAYER_PAUSED:Ljava/lang/String; = "isPlayerPaused"

.field public static final EXTRA_LIST_TYPE:Ljava/lang/String; = "listType"

.field public static final EXTRA_VIDEO_ID:Ljava/lang/String; = "videoId"

.field public static final EXTRA_WIDGET_ID:Ljava/lang/String; = "widgetId"

.field public static final INVALID_WIDGET_ID:Ljava/lang/Integer;

.field private static final TAG:Ljava/lang/String; = "nf_preapp_service"

.field private static final WIDGET_REFRESH_DELAY_MS:J = 0x6ddd00L


# instance fields
.field private final agentContext:Lcom/netflix/mediaclient/service/pservice/PServiceAgent$AgentContext;

.field private mFetchAgent:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;

.field private final mInitCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/PService$InitCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mInitComplete:Z

.field private mWidgetAgent:Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PService;->INVALID_WIDGET_ID:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/pservice/PService;->mInitComplete:Z

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService;->mInitCallbacks:Ljava/util/ArrayList;

    .line 300
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PService$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/pservice/PService$2;-><init>(Lcom/netflix/mediaclient/service/pservice/PService;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService;->agentContext:Lcom/netflix/mediaclient/service/pservice/PServiceAgent$AgentContext;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/pservice/PService;)Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService;->mWidgetAgent:Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/pservice/PService;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pservice/PService;->initCompleted()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/pservice/PService;)Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService;->mFetchAgent:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/pservice/PService;)Lcom/netflix/mediaclient/service/pservice/PServiceAgent$AgentContext;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService;->agentContext:Lcom/netflix/mediaclient/service/pservice/PServiceAgent$AgentContext;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/pservice/PService;Landroid/content/Intent;II)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/pservice/PService;->doStartCommand(Landroid/content/Intent;II)V

    return-void
.end method

.method private cancelWidgetRefreshAlarm()V
    .locals 3

    .prologue
    .line 375
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/pservice/PService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 376
    if-nez v0, :cond_0

    .line 377
    const-string/jumbo v0, "nf_preapp_service"

    const-string/jumbo v1, "Can\'t access alarm manager to set widget refresh alarm"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :goto_0
    return-void

    .line 379
    :cond_0
    const-string/jumbo v1, "nf_preapp_service"

    const-string/jumbo v2, "Cancelling widget refresh alarm"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pservice/PService;->createTileExpiryAlarmPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private createTileExpiryAlarmPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 385
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.service.pservice.ACTION_REFRESH_WIDGET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/netflix/mediaclient/service/pservice/PService;

    .line 387
    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x8000000

    .line 385
    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private createToNetflixServiceIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 338
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    const-class v1, Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 340
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.CATEGORY_FROM_PREAPP_PSERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    return-object v0
.end method

.method private doStartCommand(Landroid/content/Intent;II)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-wide/32 v6, 0x6ddd00

    .line 185
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    const-string/jumbo v3, "com.netflix.mediaclient.service.pservice.ACTION_REFRESH_WIDGET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    const-string/jumbo v0, "nf_preapp_service"

    const-string/jumbo v1, "handling widget refresh alarm expiry..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService;->mWidgetAgent:Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;

    invoke-virtual {v0, p0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->handleWidgetRefreshReq(Landroid/content/Context;Landroid/content/Intent;)V

    .line 193
    invoke-direct {p0, v6, v7}, Lcom/netflix/mediaclient/service/pservice/PService;->updateWidgetRefreshAlarm(J)V

    goto :goto_0

    .line 198
    :cond_2
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.CATEGORY_FROM_PREAPP_AGENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    const-string/jumbo v0, "nf_preapp_service"

    const-string/jumbo v3, "PREAPP_AGENT command intent :%s "

    invoke-static {v0, v3, p1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 200
    if-eqz p1, :cond_5

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.ACTION_PLAYER_STATE_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService;->mWidgetAgent:Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->handlePlayerStateChange(Landroid/content/Intent;)V

    .line 207
    :cond_3
    :goto_1
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.CATEGORY_FROM_PREAPP_WIDGET"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const-string/jumbo v0, "nf_preapp_service"

    const-string/jumbo v3, "PREAPP_WIDGET command intent ..action:%s "

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_4
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 242
    const-string/jumbo v0, "nf_preapp_service"

    const-string/jumbo v1, "unexpected action: drop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    :cond_5
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/pservice/PService;->handleCommandFromNetflixService(Landroid/content/Intent;)V

    .line 204
    invoke-direct {p0, v6, v7}, Lcom/netflix/mediaclient/service/pservice/PService;->updateWidgetRefreshAlarm(J)V

    goto :goto_1

    .line 210
    :sswitch_0
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.INSTALLED_FROM_PREAPP_WIDGET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    goto :goto_2

    :sswitch_1
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.ACTION_RESIZED_FROM_PREAPP_WIDGET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v2

    goto :goto_2

    :sswitch_2
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.REFRESH_FROM_PREAPP_WIDGET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x2

    goto :goto_2

    :sswitch_3
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.HOME_FROM_PREAPP_WIDGET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x3

    goto :goto_2

    :sswitch_4
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.DETAILS_1_FROM_PREAPP_WIDGET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x4

    goto :goto_2

    :sswitch_5
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.DETAILS_2_FROM_PREAPP_WIDGET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x5

    goto :goto_2

    :sswitch_6
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.DETAILS_3_FROM_PREAPP_WIDGET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x6

    goto :goto_2

    :sswitch_7
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.PLAY_1_FROM_PREAPP_WIDGET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x7

    goto :goto_2

    :sswitch_8
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.PLAY_2_FROM_PREAPP_WIDGET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v0, 0x8

    goto :goto_2

    :sswitch_9
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.PLAY_3_FROM_PREAPP_WIDGET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v0, 0x9

    goto/16 :goto_2

    :sswitch_a
    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.UNINSTALL_FROM_PREAPP_WIDGET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v0, 0xa

    goto/16 :goto_2

    .line 212
    :pswitch_0
    const-string/jumbo v0, "nf_preapp_service"

    const-string/jumbo v1, "widget installed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService;->mWidgetAgent:Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;

    invoke-virtual {v0, p0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->handleWidgetRefreshReq(Landroid/content/Context;Landroid/content/Intent;)V

    .line 214
    invoke-direct {p0, v6, v7}, Lcom/netflix/mediaclient/service/pservice/PService;->updateWidgetRefreshAlarm(J)V

    goto/16 :goto_0

    .line 217
    :pswitch_1
    const-string/jumbo v0, "nf_preapp_service"

    const-string/jumbo v1, "widget resized"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService;->mWidgetAgent:Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;

    invoke-virtual {v0, p0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->handleWidgetResizeReq(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 221
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService;->mWidgetAgent:Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;

    invoke-virtual {v0, p0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->handleWidgetRefreshReq(Landroid/content/Context;Landroid/content/Intent;)V

    .line 222
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService;->mWidgetAgent:Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;

    invoke-virtual {v0, p0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->logWidgetRefreshEvent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 223
    invoke-direct {p0, v6, v7}, Lcom/netflix/mediaclient/service/pservice/PService;->updateWidgetRefreshAlarm(J)V

    goto/16 :goto_0

    .line 226
    :pswitch_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService;->mWidgetAgent:Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;

    invoke-virtual {v0, p0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->handleWidgetHomeReq(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 231
    :pswitch_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService;->mWidgetAgent:Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;

    invoke-virtual {v0, p0, p1, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->handlePlayOrDetailsReq(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto/16 :goto_0

    .line 236
    :pswitch_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService;->mWidgetAgent:Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;

    invoke-virtual {v0, p0, p1, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->handlePlayOrDetailsReq(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto/16 :goto_0

    .line 239
    :pswitch_6
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pservice/PService;->cancelWidgetRefreshAlarm()V

    goto/16 :goto_0

    .line 210
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3490065e -> :sswitch_2
        -0x33fc3147 -> :sswitch_9
        -0x1b9e07a6 -> :sswitch_8
        -0xb254859 -> :sswitch_6
        -0x3a3e745 -> :sswitch_a
        -0x33fde05 -> :sswitch_7
        0x7079323 -> :sswitch_0
        0xd38e148 -> :sswitch_5
        0x25970ae9 -> :sswitch_4
        0x4d0756e2 -> :sswitch_3
        0x580dfb3a -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private init()V
    .locals 3

    .prologue
    .line 104
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PService$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/pservice/PService$1;-><init>(Lcom/netflix/mediaclient/service/pservice/PService;)V

    .line 144
    const-string/jumbo v1, "nf_preapp_service"

    const-string/jumbo v2, "PService initing..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pservice/PService;->mFetchAgent:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pservice/PService;->agentContext:Lcom/netflix/mediaclient/service/pservice/PServiceAgent$AgentContext;

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;->init(Lcom/netflix/mediaclient/service/pservice/PServiceAgent$AgentContext;Lcom/netflix/mediaclient/service/pservice/PServiceAgent$InitCallback;)V

    .line 146
    return-void
.end method

.method private initCompleted()V
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 151
    const-string/jumbo v0, "nf_preapp_service"

    const-string/jumbo v1, "Invoking InitCallbacks..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService;->mInitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pservice/PService$InitCallback;

    .line 153
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/pservice/PService$InitCallback;->onInitComplete()V

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService;->mInitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/pservice/PService;->mInitComplete:Z

    .line 159
    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isWidgetInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/service/pservice/PService;->isRemoteUiDevice()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    const-string/jumbo v0, "nf_preapp_service"

    const-string/jumbo v1, "stopping service - !widgetInstalled & !isRemoteUiDevice & !TestCode"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PService;->stopSelf()V

    .line 165
    :goto_1
    return-void

    .line 163
    :cond_1
    const-wide/32 v0, 0x6ddd00

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/pservice/PService;->updateWidgetRefreshAlarm(J)V

    goto :goto_1
.end method

.method public static isRemoteUiDevice()Z
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method private updateWidgetRefreshAlarm(J)V
    .locals 5

    .prologue
    .line 359
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/pservice/PService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 360
    if-nez v0, :cond_0

    .line 361
    const-string/jumbo v0, "nf_preapp_service"

    const-string/jumbo v1, "Can\'t access alarm manager to set widget refresh alarm"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 364
    add-long/2addr v2, p1

    .line 370
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pservice/PService;->createTileExpiryAlarmPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method public handleCommandFromNetflixService(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 254
    if-nez p1, :cond_0

    .line 255
    const-string/jumbo v0, "nf_preapp_service"

    const-string/jumbo v1, "Intent is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_0
    return-void

    .line 263
    :cond_0
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.ALL_MEMBER_UPDATED_FROM_PREAPP_AGENT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.CW_UPDATED_FROM_PREAPP_AGENT"

    .line 264
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.IQ_UPDATED_FROM_PREAPP_AGENT"

    .line 265
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.ACTION_ACCOUNT_DEACTIVATED_FROM_PREAPP_AGENT"

    .line 266
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService;->mFetchAgent:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;->refreshDataAndNotify(Landroid/content/Intent;)V

    goto :goto_0

    .line 268
    :cond_2
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.NON_MEMBER_UPDATED_FROM_PREAPP_AGENT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 269
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService;->agentContext:Lcom/netflix/mediaclient/service/pservice/PServiceAgent$AgentContext;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceAgent$AgentContext;->getFetchAgent()Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceFetchAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceFetchAgentInterface;->getDiskData()Lcom/netflix/mediaclient/service/pservice/PDiskData;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->isMemberDataAvailable(Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 270
    const-string/jumbo v0, "nf_preapp_service"

    const-string/jumbo v1, "member data available - ignore ACTION_NON_MEMBER_UPDATED_FROM_PREAPP_AGENT"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 272
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService;->mFetchAgent:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;->refreshDataAndNotify(Landroid/content/Intent;)V

    goto :goto_0

    .line 275
    :cond_4
    const-string/jumbo v0, "nf_preapp_service"

    const-string/jumbo v1, "Unknown command!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected notifyToFetchData()V
    .locals 3

    .prologue
    .line 345
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.REFRESH_DATA"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pservice/PService;->createToNetflixServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 346
    const-string/jumbo v1, "nf_preapp_service"

    const-string/jumbo v2, "Sending command to start NetflixService...ACTION_REFRESH_DATA"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/pservice/PService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 348
    const-string/jumbo v0, "nf_preapp_service"

    const-string/jumbo v1, "Sending command to NetflixService done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return-void
.end method

.method protected notifyToFetchNonMemberData()V
    .locals 3

    .prologue
    .line 352
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.REFRESH_NON_MEMBER_DATA"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pservice/PService;->createToNetflixServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 353
    const-string/jumbo v1, "nf_preapp_service"

    const-string/jumbo v2, "Sending command to start NetflixService...ACTION_REFRESH_NON_MEMBER_DATA"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/pservice/PService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 355
    const-string/jumbo v0, "nf_preapp_service"

    const-string/jumbo v1, "Sending command to NetflixService done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 87
    const-string/jumbo v0, "nf_preapp_service"

    const-string/jumbo v1, "PService.onCreate."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 90
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService;->mFetchAgent:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;

    .line 91
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService;->mWidgetAgent:Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;

    .line 93
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pservice/PService;->init()V

    .line 94
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 328
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 329
    const-string/jumbo v0, "nf_preapp_service"

    const-string/jumbo v1, "PService.onDestroy."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService;->mFetchAgent:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;->destroy()V

    .line 333
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService;->mWidgetAgent:Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->destroy()V

    .line 334
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 171
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/pservice/PService;->mInitComplete:Z

    if-eqz v0, :cond_1

    .line 172
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/pservice/PService;->doStartCommand(Landroid/content/Intent;II)V

    .line 177
    :cond_0
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService;->mInitCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/netflix/mediaclient/service/pservice/PService$StartCommandInitCallback;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/pservice/PService$StartCommandInitCallback;-><init>(Lcom/netflix/mediaclient/service/pservice/PService;Landroid/content/Intent;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
