.class public Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;
.super Ljava/lang/Object;
.source "PreAppWidgetSize.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_preapp_widgetsize"


# instance fields
.field public maxHeight:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxHeight"
    .end annotation
.end field

.field public maxWidth:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxWidth"
    .end annotation
.end field

.field public minHeight:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "minHeight"
    .end annotation
.end field

.field public minWidth:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "minWidth"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;->minWidth:I

    .line 25
    iput v0, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;->maxWidth:I

    .line 26
    iput v0, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;->minHeight:I

    .line 27
    iput v0, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;->maxHeight:I

    .line 28
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;->minWidth:I

    .line 32
    iput p2, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;->maxWidth:I

    .line 33
    iput p3, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;->minHeight:I

    .line 34
    iput p4, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;->maxHeight:I

    .line 35
    return-void
.end method


# virtual methods
.method public toJsonString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 42
    return-object v0
.end method
