.class Lcom/biznessapps/fragments/lists/PodcastsListFragment$5;
.super Ljava/lang/Object;
.source "PodcastsListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/lists/PodcastsListFragment;->playPodcast(Lcom/biznessapps/model/PodcastItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/lists/PodcastsListFragment;

.field final synthetic val$item:Lcom/biznessapps/model/PodcastItem;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/lists/PodcastsListFragment;Lcom/biznessapps/model/PodcastItem;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment$5;->this$0:Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    iput-object p2, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment$5;->val$item:Lcom/biznessapps/model/PodcastItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 158
    invoke-static {}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->access$200()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/player/PlayerServiceAccessor;->stop()V

    .line 159
    invoke-static {}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->access$200()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment$5;->val$item:Lcom/biznessapps/model/PodcastItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/PodcastItem;->getAudioUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/player/PlayerServiceAccessor;->play(Ljava/lang/String;)V

    .line 160
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! item.getAudioUrl() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment$5;->val$item:Lcom/biznessapps/model/PodcastItem;

    invoke-virtual {v2}, Lcom/biznessapps/model/PodcastItem;->getAudioUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment$5;->this$0:Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->access$800(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)V

    .line 163
    return-void
.end method
