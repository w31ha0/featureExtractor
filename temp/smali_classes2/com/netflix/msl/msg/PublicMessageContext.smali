.class public abstract Lcom/netflix/msl/msg/PublicMessageContext;
.super Ljava/lang/Object;
.source "PublicMessageContext.java"

# interfaces
.implements Lcom/netflix/msl/msg/MessageContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEncrypted()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public isIntegrityProtected()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public isNonReplayable()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method
