.class public Lcom/netflix/mediaclient/service/logging/apm/model/Display;
.super Ljava/lang/Object;
.source "Display.java"


# static fields
.field public static final ASPECT_RATIO:Ljava/lang/String; = "aspectRatio"

.field public static final CONNECTOR:Ljava/lang/String; = "connector"

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final HORIZONTAL_DPI:Ljava/lang/String; = "horizontalDpi"

.field public static final REFRESH_RATE:Ljava/lang/String; = "refreshRate"

.field public static final RESOLUTION:Ljava/lang/String; = "resolution"

.field public static final SCAN_MODE:Ljava/lang/String; = "scanMode"

.field public static final WIDTH:Ljava/lang/String; = "width"


# instance fields
.field private aspectRatio:Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;

.field private connector:Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

.field private height:Ljava/lang/Integer;

.field private horizontalDpi:I

.field private refreshRate:Ljava/lang/Integer;

.field private scanMode:Lcom/netflix/mediaclient/service/logging/apm/model/Display$ScanMode;

.field private width:Ljava/lang/Integer;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/netflix/mediaclient/service/logging/apm/model/Display$ScanMode;I)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->connector:Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

    .line 82
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->aspectRatio:Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;

    .line 83
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->width:Ljava/lang/Integer;

    .line 84
    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->height:Ljava/lang/Integer;

    .line 85
    iput-object p5, p0, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->refreshRate:Ljava/lang/Integer;

    .line 86
    iput-object p6, p0, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->scanMode:Lcom/netflix/mediaclient/service/logging/apm/model/Display$ScanMode;

    .line 87
    iput p7, p0, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->horizontalDpi:I

    .line 88
    return-void
.end method

.method public static createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/apm/model/Display;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 120
    if-nez p0, :cond_0

    .line 137
    :goto_0
    return-object v0

    .line 124
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/service/logging/apm/model/Display;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/apm/model/Display;-><init>()V

    .line 125
    const-string/jumbo v2, "refreshRate"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getIntegerObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->refreshRate:Ljava/lang/Integer;

    .line 126
    const-string/jumbo v2, "aspectRatio"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;->find(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->aspectRatio:Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;

    .line 127
    const-string/jumbo v2, "resolution"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 128
    if-eqz v2, :cond_1

    .line 129
    const-string/jumbo v3, "width"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getIntegerObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->width:Ljava/lang/Integer;

    .line 130
    const-string/jumbo v3, "height"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getIntegerObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->height:Ljava/lang/Integer;

    .line 132
    :cond_1
    const-string/jumbo v2, "connector"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_2

    .line 134
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->connector:Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

    :cond_2
    move-object v0, v1

    .line 137
    goto :goto_0
.end method


# virtual methods
.method public getConnector()Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->connector:Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

    return-object v0
.end method

.method public getHeight()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRefreshRate()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->refreshRate:Ljava/lang/Integer;

    return-object v0
.end method

.method public getScanMode()Lcom/netflix/mediaclient/service/logging/apm/model/Display$ScanMode;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->scanMode:Lcom/netflix/mediaclient/service/logging/apm/model/Display$ScanMode;

    return-object v0
.end method

.method public getWidth()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->width:Ljava/lang/Integer;

    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 92
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 93
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->connector:Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

    if-eqz v1, :cond_0

    .line 94
    const-string/jumbo v1, "connector"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->connector:Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/apm/model/Display$Connector;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->aspectRatio:Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;

    if-eqz v1, :cond_1

    .line 97
    const-string/jumbo v1, "aspectRatio"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->aspectRatio:Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/apm/model/Display$AspectRatio;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->scanMode:Lcom/netflix/mediaclient/service/logging/apm/model/Display$ScanMode;

    if-eqz v1, :cond_2

    .line 100
    const-string/jumbo v1, "scanMode"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->scanMode:Lcom/netflix/mediaclient/service/logging/apm/model/Display$ScanMode;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/apm/model/Display$ScanMode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->width:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->height:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 103
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 104
    const-string/jumbo v2, "resolution"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string/jumbo v2, "height"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->height:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 106
    const-string/jumbo v2, "width"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->width:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 109
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->refreshRate:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 110
    const-string/jumbo v1, "refreshRate"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->refreshRate:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    :cond_4
    const-string/jumbo v1, "horizontalDpi"

    iget v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/Display;->horizontalDpi:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 115
    return-object v0
.end method
