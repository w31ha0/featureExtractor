.class public interface abstract Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;
.super Ljava/lang/Object;
.source "LoMo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;


# virtual methods
.method public abstract getMoreImages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNumVideos()I
.end method

.method public abstract isBillboard()Z
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setListPos(I)V
.end method
