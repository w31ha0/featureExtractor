.class public final Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;
.super Ljava/lang/Object;
.source "MdxTargetSelection.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

.field private selectedTarget:Lcom/netflix/mediaclient/ui/mdx/MdxTarget;


# direct methods
.method public constructor <init>([Landroid/util/Pair;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "nf_mdx"

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->TAG:Ljava/lang/String;

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-array p1, v2, [Landroid/util/Pair;

    .line 47
    :cond_0
    if-eqz p3, :cond_2

    .line 48
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "Include all targets"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->createListOfAllTargets([Landroid/util/Pair;Ljava/lang/String;)[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->selectedTarget:Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->selectedTarget:Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    .line 59
    :cond_1
    return-void

    .line 51
    :cond_2
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "Include ONLY remote targets"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->createListOfRemoteTargetsOnly([Landroid/util/Pair;Ljava/lang/String;)[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    goto :goto_0
.end method

.method private createListOfAllTargets([Landroid/util/Pair;Ljava/lang/String;)[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Lcom/netflix/mediaclient/ui/mdx/MdxTarget;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 76
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    .line 77
    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->createLocalTarget()Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    move-result-object v2

    aput-object v2, v1, v0

    .line 78
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 79
    add-int/lit8 v2, v0, 0x1

    aget-object v3, p1, v0

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->createRemoteTarget(Landroid/util/Pair;)Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    move-result-object v3

    aput-object v3, v1, v2

    .line 80
    add-int/lit8 v2, v0, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    add-int/lit8 v2, v0, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->selectedTarget:Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    .line 78
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_1
    return-object v1
.end method

.method private createListOfRemoteTargetsOnly([Landroid/util/Pair;Ljava/lang/String;)[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Lcom/netflix/mediaclient/ui/mdx/MdxTarget;"
        }
    .end annotation

    .prologue
    .line 63
    array-length v0, p1

    new-array v1, v0, [Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    .line 64
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 65
    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->createRemoteTarget(Landroid/util/Pair;)Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    move-result-object v2

    aput-object v2, v1, v0

    .line 66
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    aget-object v2, v1, v0

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->selectedTarget:Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    .line 64
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    return-object v1
.end method

.method private static toAdapterList(Landroid/content/Context;[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Lcom/netflix/mediaclient/ui/mdx/MdxTarget;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    if-eqz p1, :cond_1

    .line 154
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 155
    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->isLocal()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    const v3, 0x7f090124

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 162
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getDevicePositionByUUID(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 193
    if-nez p1, :cond_0

    .line 194
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v2, "getDevicePositionByUUID:: Given UUID is null!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    return v1

    :cond_0
    move v0, v1

    .line 198
    :goto_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 199
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    const-string/jumbo v1, "nf_mdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDevicePositionByUUID:: given device found on position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 201
    goto :goto_0

    .line 198
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    :cond_2
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v2, "Selected device not found!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLocalDevicePosition()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 167
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->isLocal()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    const-string/jumbo v1, "nf_mdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Local device found on position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_1
    return v0

    .line 167
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_1
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v2, "We do NOT have local device from Mobile UI"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 175
    goto :goto_1
.end method

.method public getMdxTargets()[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    return-object v0
.end method

.method public getSelectedDevicePosition()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 180
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 181
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->selectedTarget:Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    if-ne v2, v3, :cond_0

    .line 182
    const-string/jumbo v1, "nf_mdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Selected device found on position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_1
    return v0

    .line 180
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_1
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v2, "Selected device not found!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 188
    goto :goto_1
.end method

.method public getSelectedTarget()Lcom/netflix/mediaclient/ui/mdx/MdxTarget;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->selectedTarget:Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    return-object v0
.end method

.method public getTargets(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    if-nez v0, :cond_0

    .line 137
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "We should never be here. No targets!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->toAdapterList(Landroid/content/Context;[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setTarget(I)Lcom/netflix/mediaclient/ui/mdx/MdxTarget;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    array-length v0, v0

    if-le v0, p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->mdxTargets:[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->selectedTarget:Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->selectedTarget:Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    .line 107
    :goto_0
    return-object v0

    .line 106
    :cond_0
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "Target NOT found! This should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v0, 0x0

    goto :goto_0
.end method
