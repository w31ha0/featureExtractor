.class public interface abstract Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;
.super Ljava/lang/Object;
.source "MdxController.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/Mdx;


# virtual methods
.method public abstract getPairing()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/PairingController;
.end method

.method public abstract getSession()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/SessionController;
.end method

.method public abstract initCastMdx(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)V
.end method

.method public abstract initNativeMdx(ZLorg/json/JSONArray;)V
.end method

.method public abstract populatRemoteDeviceMap(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract setMdxNetworkInterface()V
.end method
