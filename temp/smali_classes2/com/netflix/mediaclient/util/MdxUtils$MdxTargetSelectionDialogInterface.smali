.class public interface abstract Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;
.super Ljava/lang/Object;
.source "MdxUtils.java"


# virtual methods
.method public abstract getCurrentPositionMs()J
.end method

.method public abstract getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
.end method

.method public abstract getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;
.end method

.method public abstract getPlayer()Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;
.end method

.method public abstract getTargetSelection()Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;
.end method

.method public abstract isPlayingLocally()Z
.end method

.method public abstract isPlayingRemotely()Z
.end method

.method public abstract notifyPlayingBackLocal()V
.end method

.method public abstract notifyPlayingBackRemote()V
.end method
