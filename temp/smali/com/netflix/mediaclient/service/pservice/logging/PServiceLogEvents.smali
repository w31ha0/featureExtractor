.class public final Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;
.super Ljava/lang/Object;
.source "PServiceLogEvents.java"


# static fields
.field public static final ENABLE_VERBOSE_LOGGING:Ljava/lang/Boolean;

.field private static final TAG:Ljava/lang/String; = "nf_preapp_logevents"


# instance fields
.field private widgetLogEvents:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "widgetLogEvents"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->ENABLE_VERBOSE_LOGGING:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->widgetLogEvents:Ljava/util/List;

    .line 19
    return-void
.end method

.method public static createFromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;
    .locals 2

    .prologue
    .line 41
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->newInstance()Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    .line 45
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->ENABLE_VERBOSE_LOGGING:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;

    goto :goto_0
.end method

.method public static newInstance()Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addWidgetEvent(Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent;)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->widgetLogEvents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 55
    const-string/jumbo v0, "nf_preapp_logevents"

    const-string/jumbo v1, "widgetLogEvents is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->widgetLogEvents:Ljava/util/List;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->widgetLogEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public getWidgetEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->widgetLogEvents:Ljava/util/List;

    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 26
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->ENABLE_VERBOSE_LOGGING:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    :cond_0
    return-object v0
.end method
