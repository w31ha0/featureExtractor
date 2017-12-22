.class public final Lcom/netflix/mediaclient/ui/mdx/MdxTarget;
.super Ljava/lang/Object;
.source "MdxTarget.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_mdx"


# instance fields
.field private mFriendlyName:Ljava/lang/String;

.field private mLocal:Z

.field private mUUID:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->mUUID:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->mFriendlyName:Ljava/lang/String;

    .line 38
    iput-boolean p3, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->mLocal:Z

    .line 39
    return-void
.end method

.method public static createLocalTarget()Lcom/netflix/mediaclient/ui/mdx/MdxTarget;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static createRemoteTarget(Landroid/util/Pair;)Lcom/netflix/mediaclient/ui/mdx/MdxTarget;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/mediaclient/ui/mdx/MdxTarget;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v2, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2
.end method


# virtual methods
.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->mFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->mUUID:Ljava/lang/String;

    return-object v0
.end method

.method public isLocal()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->mLocal:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MdxTarget [TAG=nf_mdx, mUUID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->mUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", friendlyName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", local="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->mLocal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
