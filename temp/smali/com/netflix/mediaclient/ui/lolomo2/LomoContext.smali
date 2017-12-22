.class abstract Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;
.super Ljava/lang/Object;
.source "LomoContext.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static builder()Lcom/netflix/mediaclient/ui/lolomo2/LomoContext$Builder;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext$Builder;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method abstract lomo()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;
.end method

.method abstract rowPosition()I
.end method

.method abstract uiLocation()Lcom/netflix/mediaclient/servicemgr/UiLocation;
.end method
