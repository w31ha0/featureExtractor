.class final Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext;
.super Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;
.source "AutoValue_LomoContext.java"


# instance fields
.field private final lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

.field private final rowPosition:I

.field private final uiLocation:Lcom/netflix/mediaclient/servicemgr/UiLocation;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/servicemgr/UiLocation;I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 19
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext;->uiLocation:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    .line 20
    iput p3, p0, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext;->rowPosition:I

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/servicemgr/UiLocation;ILcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext$1;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/servicemgr/UiLocation;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    if-ne p1, p0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    instance-of v2, p1, Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;

    if-eqz v2, :cond_3

    .line 54
    check-cast p1, Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;

    .line 55
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;->lomo()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext;->uiLocation:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    .line 56
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;->uiLocation()Lcom/netflix/mediaclient/servicemgr/UiLocation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/servicemgr/UiLocation;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext;->rowPosition:I

    .line 57
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;->rowPosition()I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 59
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const v2, 0xf4243

    .line 64
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/2addr v0, v2

    .line 67
    mul-int/2addr v0, v2

    .line 68
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext;->uiLocation:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/UiLocation;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 69
    mul-int/2addr v0, v2

    .line 70
    iget v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext;->rowPosition:I

    xor-int/2addr v0, v1

    .line 71
    return v0
.end method

.method lomo()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    return-object v0
.end method

.method rowPosition()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext;->rowPosition:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LomoContext{lomo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uiLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext;->uiLocation:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rowPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext;->rowPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method uiLocation()Lcom/netflix/mediaclient/servicemgr/UiLocation;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/AutoValue_LomoContext;->uiLocation:Lcom/netflix/mediaclient/servicemgr/UiLocation;

    return-object v0
.end method
