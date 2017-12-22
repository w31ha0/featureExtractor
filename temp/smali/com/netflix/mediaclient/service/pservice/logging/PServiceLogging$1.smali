.class synthetic Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging$1;
.super Ljava/lang/Object;
.source "PServiceLogging.java"


# static fields
.field static final synthetic $SwitchMap$com$netflix$mediaclient$service$pservice$logging$PServiceWidgetLogEvent$WidgetAction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 87
    invoke-static {}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;->values()[Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging$1;->$SwitchMap$com$netflix$mediaclient$service$pservice$logging$PServiceWidgetLogEvent$WidgetAction:[I

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging$1;->$SwitchMap$com$netflix$mediaclient$service$pservice$logging$PServiceWidgetLogEvent$WidgetAction:[I

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;->INSTALL:Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging$1;->$SwitchMap$com$netflix$mediaclient$service$pservice$logging$PServiceWidgetLogEvent$WidgetAction:[I

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;->DELETE:Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging$1;->$SwitchMap$com$netflix$mediaclient$service$pservice$logging$PServiceWidgetLogEvent$WidgetAction:[I

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;->GO_TO_NEXT:Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
