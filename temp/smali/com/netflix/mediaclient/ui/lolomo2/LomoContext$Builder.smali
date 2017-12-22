.class abstract Lcom/netflix/mediaclient/ui/lolomo2/LomoContext$Builder;
.super Ljava/lang/Object;
.source "LomoContext.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract build()Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;
.end method

.method abstract setLomo(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)Lcom/netflix/mediaclient/ui/lolomo2/LomoContext$Builder;
.end method

.method abstract setRowPosition(I)Lcom/netflix/mediaclient/ui/lolomo2/LomoContext$Builder;
.end method

.method abstract setUiLocation(Lcom/netflix/mediaclient/servicemgr/UiLocation;)Lcom/netflix/mediaclient/ui/lolomo2/LomoContext$Builder;
.end method
