.class Lcom/netflix/msl/msg/MslControl$KeyxResponseMessageContext;
.super Lcom/netflix/msl/msg/MslControl$FilterMessageContext;
.source "MslControl.java"


# direct methods
.method public constructor <init>(Lcom/netflix/msl/msg/MessageContext;)V
    .locals 0

    .prologue
    .line 683
    invoke-direct {p0, p1}, Lcom/netflix/msl/msg/MslControl$FilterMessageContext;-><init>(Lcom/netflix/msl/msg/MessageContext;)V

    .line 684
    return-void
.end method


# virtual methods
.method public isEncrypted()Z
    .locals 1

    .prologue
    .line 693
    const/4 v0, 0x0

    return v0
.end method

.method public isIntegrityProtected()Z
    .locals 1

    .prologue
    .line 703
    const/4 v0, 0x0

    return v0
.end method

.method public isNonReplayable()Z
    .locals 1

    .prologue
    .line 711
    const/4 v0, 0x0

    return v0
.end method

.method public write(Lcom/netflix/msl/msg/MessageOutputStream;)V
    .locals 0

    .prologue
    .line 720
    return-void
.end method
