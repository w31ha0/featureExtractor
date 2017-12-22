.class public final enum Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;
.super Ljava/lang/Enum;
.source "Display.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

.field public static final enum component:Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

.field public static final enum composite:Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

.field public static final enum hdmi:Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

.field public static final enum internal:Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 146
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

    const-string/jumbo v1, "internal"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;->internal:Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

    .line 147
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

    const-string/jumbo v1, "component"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;->component:Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

    .line 148
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

    const-string/jumbo v1, "composite"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;->composite:Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

    .line 149
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

    const-string/jumbo v1, "hdmi"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;->hdmi:Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

    .line 145
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;->internal:Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;->component:Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;->composite:Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;->hdmi:Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;->$VALUES:[Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;
    .locals 1

    .prologue
    .line 145
    const-class v0, Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;->$VALUES:[Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

    return-object v0
.end method
