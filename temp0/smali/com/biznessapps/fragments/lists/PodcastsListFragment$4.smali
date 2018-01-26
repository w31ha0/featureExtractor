.class Lcom/biznessapps/fragments/lists/PodcastsListFragment$4;
.super Ljava/lang/Object;
.source "PodcastsListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/lists/PodcastsListFragment;->updateImageButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/lists/PodcastsListFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment$4;->this$0:Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 136
    invoke-static {}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->access$200()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/player/PlayerServiceAccessor;->getService()Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->access$200()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biznessapps/player/PlayerServiceAccessor;->isInState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment$4;->this$0:Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->access$700(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$drawable;->player_pause_button:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment$4;->this$0:Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->access$700(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$drawable;->player_play_button:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method
