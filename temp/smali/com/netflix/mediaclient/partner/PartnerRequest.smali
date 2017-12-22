.class public Lcom/netflix/mediaclient/partner/PartnerRequest;
.super Ljava/lang/Object;
.source "PartnerRequest.java"


# instance fields
.field private idx:I

.field private listener:Lcom/netflix/mediaclient/partner/ResponseListener;

.field private requestType:Lcom/netflix/mediaclient/partner/PartnerRequestType;

.field private service:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/partner/PartnerRequestType;Ljava/lang/String;Ljava/lang/String;ILcom/netflix/mediaclient/partner/ResponseListener;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/netflix/mediaclient/partner/PartnerRequest;->service:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/netflix/mediaclient/partner/PartnerRequest;->userId:Ljava/lang/String;

    .line 44
    iput p4, p0, Lcom/netflix/mediaclient/partner/PartnerRequest;->idx:I

    .line 45
    iput-object p5, p0, Lcom/netflix/mediaclient/partner/PartnerRequest;->listener:Lcom/netflix/mediaclient/partner/ResponseListener;

    .line 46
    iput-object p1, p0, Lcom/netflix/mediaclient/partner/PartnerRequest;->requestType:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    .line 47
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/netflix/mediaclient/partner/PartnerRequest;->idx:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdx()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/netflix/mediaclient/partner/PartnerRequest;->idx:I

    return v0
.end method

.method public getListener()Lcom/netflix/mediaclient/partner/ResponseListener;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/PartnerRequest;->listener:Lcom/netflix/mediaclient/partner/ResponseListener;

    return-object v0
.end method

.method public getRequestType()Lcom/netflix/mediaclient/partner/PartnerRequestType;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/PartnerRequest;->requestType:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/PartnerRequest;->service:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/PartnerRequest;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PartnerRequest [service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/PartnerRequest;->service:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/PartnerRequest;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", idx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/partner/PartnerRequest;->idx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/PartnerRequest;->listener:Lcom/netflix/mediaclient/partner/ResponseListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", requestType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/PartnerRequest;->requestType:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
