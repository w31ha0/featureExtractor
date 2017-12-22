.class public Lcom/netflix/model/branches/PostPlayExperienceMap;
.super Ljava/lang/Object;
.source "PostPlayExperienceMap.java"

# interfaces
.implements Lcom/netflix/falkor/BranchNode;


# static fields
.field private static final TAG:Ljava/lang/String; = "PostPlayExperienceMap"


# instance fields
.field private playbackVideos:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;>;"
        }
    .end annotation
.end field

.field private postPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

.field private proxy:Lcom/netflix/falkor/ModelProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/ModelProxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/netflix/model/branches/PostPlayExperienceMap;->proxy:Lcom/netflix/falkor/ModelProxy;

    .line 26
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 30
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 34
    const-string/jumbo v0, "PostPlayExperienceMap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not find key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 30
    :sswitch_0
    const-string/jumbo v1, "experienceData"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "playbackVideos"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 31
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/model/branches/PostPlayExperienceMap;->postPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    goto :goto_1

    .line 32
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/model/branches/PostPlayExperienceMap;->playbackVideos:Lcom/netflix/falkor/BranchMap;

    goto :goto_1

    .line 30
    nop

    :sswitch_data_0
    .sparse-switch
        0x407f834 -> :sswitch_0
        0x4dc8fd53 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 61
    iget-object v1, p0, Lcom/netflix/model/branches/PostPlayExperienceMap;->postPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    if-eqz v1, :cond_0

    .line 62
    const-string/jumbo v1, "experienceData"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/netflix/model/branches/PostPlayExperienceMap;->playbackVideos:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_1

    .line 65
    const-string/jumbo v1, "playbackVideos"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_1
    return-object v0
.end method

.method public getOrCreate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/netflix/model/branches/PostPlayExperienceMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 48
    :goto_0
    return-object v0

    .line 46
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :sswitch_0
    const-string/jumbo v1, "experienceData"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "playbackVideos"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 47
    :pswitch_0
    new-instance v0, Lcom/netflix/model/leafs/PostPlayExperience;

    iget-object v1, p0, Lcom/netflix/model/branches/PostPlayExperienceMap;->proxy:Lcom/netflix/falkor/ModelProxy;

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/PostPlayExperience;-><init>(Lcom/netflix/falkor/ModelProxy;)V

    iput-object v0, p0, Lcom/netflix/model/branches/PostPlayExperienceMap;->postPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    goto :goto_0

    .line 48
    :pswitch_1
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    new-instance v1, Lcom/netflix/model/branches/PostPlayExperienceMap$1;

    invoke-direct {v1, p0}, Lcom/netflix/model/branches/PostPlayExperienceMap$1;-><init>(Lcom/netflix/model/branches/PostPlayExperienceMap;)V

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/branches/PostPlayExperienceMap;->playbackVideos:Lcom/netflix/falkor/BranchMap;

    goto :goto_0

    .line 46
    nop

    :sswitch_data_0
    .sparse-switch
        0x407f834 -> :sswitch_0
        0x4dc8fd53 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/model/branches/PostPlayExperienceMap;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 72
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 77
    const-string/jumbo v0, "PostPlayExperienceMap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Don\'t know how to set key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_1
    return-void

    .line 72
    :sswitch_0
    const-string/jumbo v1, "experienceData"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "playbackVideos"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 73
    :pswitch_0
    check-cast p2, Lcom/netflix/model/leafs/PostPlayExperience;

    iput-object p2, p0, Lcom/netflix/model/branches/PostPlayExperienceMap;->postPlayExperience:Lcom/netflix/model/leafs/PostPlayExperience;

    goto :goto_1

    .line 75
    :pswitch_1
    instance-of v0, p2, Lcom/netflix/falkor/BranchMap;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/netflix/falkor/BranchMap;

    :goto_2
    iput-object p2, p0, Lcom/netflix/model/branches/PostPlayExperienceMap;->playbackVideos:Lcom/netflix/falkor/BranchMap;

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    goto :goto_2

    .line 72
    :sswitch_data_0
    .sparse-switch
        0x407f834 -> :sswitch_0
        0x4dc8fd53 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
