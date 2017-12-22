.class public Lcom/netflix/model/branches/FalkorIrisNotification;
.super Lcom/netflix/model/BaseFalkorObject;
.source "FalkorIrisNotification.java"

# interfaces
.implements Lcom/netflix/model/branches/FalkorObject;


# instance fields
.field public summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

.field public video:Lcom/netflix/falkor/Ref;


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
    .line 22
    invoke-direct {p0, p1}, Lcom/netflix/model/BaseFalkorObject;-><init>(Lcom/netflix/falkor/ModelProxy;)V

    .line 23
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 27
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 36
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 27
    :sswitch_0
    const-string/jumbo v1, "summary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "notificationVideo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 29
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorIrisNotification;->summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    goto :goto_1

    .line 31
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorIrisNotification;->video:Lcom/netflix/falkor/Ref;

    goto :goto_1

    .line 27
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6eb9585a -> :sswitch_0
        -0x5e3589b0 -> :sswitch_1
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
    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 63
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorIrisNotification;->summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    if-eqz v1, :cond_0

    .line 64
    const-string/jumbo v1, "summary"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorIrisNotification;->video:Lcom/netflix/falkor/Ref;

    if-eqz v1, :cond_1

    .line 67
    const-string/jumbo v1, "notificationVideo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_1
    return-object v0
.end method

.method public getOrCreate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/netflix/model/branches/FalkorIrisNotification;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 56
    :goto_0
    return-object v0

    .line 47
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 56
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :sswitch_0
    const-string/jumbo v1, "summary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "notificationVideo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 49
    :pswitch_0
    new-instance v0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    invoke-direct {v0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorIrisNotification;->summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    goto :goto_0

    .line 51
    :pswitch_1
    new-instance v0, Lcom/netflix/falkor/Ref;

    invoke-direct {v0}, Lcom/netflix/falkor/Ref;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorIrisNotification;->video:Lcom/netflix/falkor/Ref;

    goto :goto_0

    .line 47
    :sswitch_data_0
    .sparse-switch
        -0x6eb9585a -> :sswitch_0
        -0x5e3589b0 -> :sswitch_1
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
    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/model/branches/FalkorIrisNotification;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 74
    const-string/jumbo v0, "summary"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    check-cast p2, Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorIrisNotification;->summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    .line 81
    :goto_0
    return-void

    .line 76
    :cond_0
    const-string/jumbo v0, "notificationVideo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    check-cast p2, Lcom/netflix/falkor/Ref;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorIrisNotification;->video:Lcom/netflix/falkor/Ref;

    goto :goto_0

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t set key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
