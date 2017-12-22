.class final Lcom/netflix/mediaclient/util/MdxUtils$1;
.super Ljava/lang/Object;
.source "MdxUtils.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic val$callbacks:Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;

.field final synthetic val$mdxTargetSelector:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

.field final synthetic val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/netflix/mediaclient/util/MdxUtils$1;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lcom/netflix/mediaclient/util/MdxUtils$1;->val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    iput-object p3, p0, Lcom/netflix/mediaclient/util/MdxUtils$1;->val$mdxTargetSelector:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    iput-object p4, p0, Lcom/netflix/mediaclient/util/MdxUtils$1;->val$callbacks:Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 260
    const-string/jumbo v1, "MdxUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Mdx target clicked: item with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", on position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v1, p0, Lcom/netflix/mediaclient/util/MdxUtils$1;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeVisibleDialog()V

    .line 263
    iget-object v1, p0, Lcom/netflix/mediaclient/util/MdxUtils$1;->val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/util/MdxUtils$1;->val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    :cond_0
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v1, "Service not ready - bailing early"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/util/MdxUtils$1;->val$mdxTargetSelector:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    invoke-virtual {v1, p3}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->setTarget(I)Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    .line 269
    iget-object v1, p0, Lcom/netflix/mediaclient/util/MdxUtils$1;->val$mdxTargetSelector:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->getSelectedTarget()Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    move-result-object v1

    .line 271
    if-nez v1, :cond_2

    .line 272
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v1, "Target is NULL, this should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/util/MdxUtils$1;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, v6}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setConnectingToTarget(Z)V

    .line 315
    iget-object v0, p0, Lcom/netflix/mediaclient/util/MdxUtils$1;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 273
    :cond_2
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->isLocal()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 274
    iget-object v1, p0, Lcom/netflix/mediaclient/util/MdxUtils$1;->val$callbacks:Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;->isPlayingRemotely()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 275
    const-string/jumbo v1, "MdxUtils"

    const-string/jumbo v2, "We were playing remotely - switching to playback locally"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcom/netflix/mediaclient/util/MdxUtils$1;->val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v1

    invoke-interface {v1, v4, v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->switchPlaybackFromTarget(Ljava/lang/String;I)V

    .line 277
    iget-object v0, p0, Lcom/netflix/mediaclient/util/MdxUtils$1;->val$callbacks:Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/util/MdxUtils$1;->val$callbacks:Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/netflix/mediaclient/servicemgr/Asset;->create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/netflix/mediaclient/util/MdxUtils$1;->val$callbacks:Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;->getCurrentPositionMs()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->setPlaybackBookmark(I)V

    .line 279
    iget-object v1, p0, Lcom/netflix/mediaclient/util/MdxUtils$1;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackForceLocal(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/Asset;I)V

    .line 280
    iget-object v0, p0, Lcom/netflix/mediaclient/util/MdxUtils$1;->val$callbacks:Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;->notifyPlayingBackLocal()V

    goto :goto_1

    .line 282
    :cond_3
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v1, "Target is local. Remove current target from MDX agent."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/netflix/mediaclient/util/MdxUtils$1;->val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/netflix/mediaclient/servicemgr/IMdx;->setCurrentTarget(Ljava/lang/String;)V

    goto :goto_1

    .line 286
    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/util/MdxUtils$1;->val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/MdxUtils;->isMdxTargetAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 287
    iget-object v2, p0, Lcom/netflix/mediaclient/util/MdxUtils$1;->val$callbacks:Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;

    invoke-interface {v2}, Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;->isPlayingLocally()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/netflix/mediaclient/util/MdxUtils$1;->val$callbacks:Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;

    invoke-interface {v2}, Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;->isPlayingRemotely()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 291
    :cond_5
    iget-object v2, p0, Lcom/netflix/mediaclient/util/MdxUtils$1;->val$callbacks:Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;

    invoke-interface {v2}, Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;->getPlayer()Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v2

    .line 293
    if-eqz v2, :cond_6

    .line 294
    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->getPositionInSeconds()I

    move-result v0

    .line 301
    :goto_2
    iget-object v2, p0, Lcom/netflix/mediaclient/util/MdxUtils$1;->val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->switchPlaybackFromTarget(Ljava/lang/String;I)V

    .line 302
    iget-object v0, p0, Lcom/netflix/mediaclient/util/MdxUtils$1;->val$callbacks:Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/util/MdxUtils$MdxTargetSelectionDialogInterface;->notifyPlayingBackRemote()V

    goto/16 :goto_1

    .line 299
    :cond_6
    const-string/jumbo v2, "MdxUtils"

    const-string/jumbo v3, "Remote player is null. This should not happen!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 307
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/util/MdxUtils$1;->val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/MdxTarget;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IMdx;->setCurrentTarget(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 311
    :cond_8
    const-string/jumbo v0, "MdxUtils"

    const-string/jumbo v1, "Remote target is NOT available, stay and dismiss dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
