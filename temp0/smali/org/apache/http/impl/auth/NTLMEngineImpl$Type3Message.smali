.class Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;
.super Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;
.source "NTLMEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Type3Message"
.end annotation


# instance fields
.field protected domainBytes:[B

.field protected hostBytes:[B

.field protected lmResp:[B

.field protected ntResp:[B

.field protected type2Flags:I

.field protected userBytes:[B


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)V
    .locals 7
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "nonce"    # [B
    .param p6, "type2Flags"    # I
    .param p7, "target"    # Ljava/lang/String;
    .param p8, "targetInformation"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    .line 906
    invoke-direct {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;-><init>()V

    .line 908
    iput p6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    .line 911
    invoke-static {p2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 913
    invoke-static {p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 918
    if-eqz p8, :cond_0

    if-eqz p7, :cond_0

    .line 919
    :try_start_0
    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$600()[B

    move-result-object v4

    .local v4, "clientChallenge":[B
    move-object v0, p7

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v5, p8

    .line 920
    invoke-static/range {v0 .. v5}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->getNTLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    .line 922
    invoke-static {p7, p3, p4, p5, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B
    :try_end_0
    .catch Lorg/apache/http/impl/auth/NTLMEngineException; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    .end local v4    # "clientChallenge":[B
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnicodeLittleUnmarked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B

    .line 949
    const-string v0, "UnicodeLittleUnmarked"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B

    .line 950
    const-string v0, "UnicodeLittleUnmarked"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 954
    return-void

    .line 924
    :cond_0
    const/high16 v0, 0x80000

    and-int/2addr v0, p6

    if-eqz v0, :cond_1

    .line 926
    :try_start_2
    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$700()[B

    move-result-object v4

    .line 928
    .restart local v4    # "clientChallenge":[B
    invoke-static {p4, p5, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->getNTLM2SessionResponse(Ljava/lang/String;[B[B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    .line 929
    iput-object v4, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B
    :try_end_2
    .catch Lorg/apache/http/impl/auth/NTLMEngineException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 940
    .end local v4    # "clientChallenge":[B
    :catch_0
    move-exception v6

    .line 943
    .local v6, "e":Lorg/apache/http/impl/auth/NTLMEngineException;
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    .line 944
    invoke-static {p4, p5}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->getLMResponse(Ljava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    goto :goto_0

    .line 936
    .end local v6    # "e":Lorg/apache/http/impl/auth/NTLMEngineException;
    :cond_1
    :try_start_3
    invoke-static {p4, p5}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    .line 937
    invoke-static {p4, p5}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->getLMResponse(Ljava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B
    :try_end_3
    .catch Lorg/apache/http/impl/auth/NTLMEngineException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 951
    :catch_1
    move-exception v6

    .line 952
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unicode not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method getResponse()Ljava/lang/String;
    .locals 15

    .prologue
    .line 959
    iget-object v12, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    array-length v7, v12

    .line 960
    .local v7, "ntRespLen":I
    iget-object v12, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    array-length v5, v12

    .line 962
    .local v5, "lmRespLen":I
    iget-object v12, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B

    array-length v0, v12

    .line 963
    .local v0, "domainLen":I
    iget-object v12, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B

    array-length v3, v12

    .line 964
    .local v3, "hostLen":I
    iget-object v12, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B

    array-length v10, v12

    .line 967
    .local v10, "userLen":I
    const/16 v6, 0x40

    .line 968
    .local v6, "lmRespOffset":I
    add-int v8, v6, v5

    .line 969
    .local v8, "ntRespOffset":I
    add-int v1, v8, v7

    .line 970
    .local v1, "domainOffset":I
    add-int v11, v1, v0

    .line 971
    .local v11, "userOffset":I
    add-int v4, v11, v10

    .line 972
    .local v4, "hostOffset":I
    add-int v9, v4, v3

    .line 973
    .local v9, "sessionKeyOffset":I
    add-int/lit8 v2, v9, 0x0

    .line 976
    .local v2, "finalLength":I
    const/4 v12, 0x3

    invoke-virtual {p0, v2, v12}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->prepareResponse(II)V

    .line 979
    invoke-virtual {p0, v5}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 980
    invoke-virtual {p0, v5}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 983
    invoke-virtual {p0, v6}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    .line 986
    invoke-virtual {p0, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 987
    invoke-virtual {p0, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 990
    invoke-virtual {p0, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    .line 993
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 994
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 997
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    .line 1000
    invoke-virtual {p0, v10}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1001
    invoke-virtual {p0, v10}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1004
    invoke-virtual {p0, v11}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    .line 1007
    invoke-virtual {p0, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1008
    invoke-virtual {p0, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    .line 1011
    invoke-virtual {p0, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    .line 1014
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    .line 1017
    invoke-virtual {p0, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    .line 1021
    const v12, 0x20000205

    iget v13, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    const/high16 v14, 0x80000

    and-int/2addr v13, v14

    or-int/2addr v12, v13

    iget v13, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    and-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    iget v13, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    and-int/lit8 v13, v13, 0x20

    or-int/2addr v12, v13

    iget v13, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    const/high16 v14, 0x40000000    # 2.0f

    and-int/2addr v13, v14

    or-int/2addr v12, v13

    iget v13, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    const v14, 0x8000

    and-int/2addr v13, v14

    or-int/2addr v12, v13

    invoke-virtual {p0, v12}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    .line 1028
    iget-object v12, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    invoke-virtual {p0, v12}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    .line 1029
    iget-object v12, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    invoke-virtual {p0, v12}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    .line 1030
    iget-object v12, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B

    invoke-virtual {p0, v12}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    .line 1031
    iget-object v12, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B

    invoke-virtual {p0, v12}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    .line 1032
    iget-object v12, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B

    invoke-virtual {p0, v12}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    .line 1034
    invoke-super {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->getResponse()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method
