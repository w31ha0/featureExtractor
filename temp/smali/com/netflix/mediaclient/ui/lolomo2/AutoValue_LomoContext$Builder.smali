.class final Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext$Builder;
.super Lcom/netflix/mediaclient/ui/lolomo2/LomoContext$Builder;
.source "AutoValue_LomoContext.java"


# instance fields
.field private lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

.field private rowPosition:Ljava/lang/Integer;

.field private uiLocation:Lcom/netflix/mediaclient/servicemgr/UiLocation;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoContext$Builder;-><init>()V

    .line 79
    return-void
.end method


# virtual methods
.method build()Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;
    .locals 5

    .prologue
    .line 103
    const-string/jumbo v0, ""

    .line 104
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext$Builder;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    if-nez v1, :cond_0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " lomo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext$Builder;->uiLocation:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    if-nez v1, :cond_1

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " uiLocation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext$Builder;->rowPosition:Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " rowPosition"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 114
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_3
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext$Builder;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext$Builder;->uiLocation:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext$Builder;->rowPosition:Ljava/lang/Integer;

    .line 119
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/servicemgr/UiLocation;ILcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext$1;)V

    .line 116
    return-object v0
.end method

.method setLomo(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)Lcom/netflix/mediaclient/ui/lolomo2/LomoContext$Builder;
    .locals 2

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Null lomo"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext$Builder;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 86
    return-object p0
.end method

.method setRowPosition(I)Lcom/netflix/mediaclient/ui/lolomo2/LomoContext$Builder;
    .locals 1

    .prologue
    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext$Builder;->rowPosition:Ljava/lang/Integer;

    .line 99
    return-object p0
.end method

.method setUiLocation(Lcom/netflix/mediaclient/servicemgr/UiLocation;)Lcom/netflix/mediaclient/ui/lolomo2/LomoContext$Builder;
    .locals 2

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Null uiLocation"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext$Builder;->uiLocation:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    .line 94
    return-object p0
.end method
