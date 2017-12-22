.class Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$WhistleCall;
.super Ljava/lang/Object;
.source "WhistleVoipEngine.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IVoip$Call;


# instance fields
.field private line:J

.field private state:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 870
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;->CONNECTING:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$WhistleCall;->state:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    .line 871
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$WhistleCall;->line:J

    .line 872
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 876
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$WhistleCall;->line:J

    return-wide v0
.end method

.method public getState()Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$WhistleCall;->state:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    return-object v0
.end method
