.class Lcom/biznessapps/fragments/lists/PodcastsListFragment$6;
.super Ljava/lang/Object;
.source "PodcastsListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/lists/PodcastsListFragment;->playPodcast()V
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
    .line 186
    iput-object p1, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment$6;->this$0:Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 190
    invoke-static {}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->access$200()Lcom/biznessapps/player/PlayerServiceAccessor;

    move-result-object v1

    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment$6;->this$0:Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->access$900(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment$6;->this$0:Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    invoke-static {v2}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->access$000(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/PodcastItem;

    invoke-virtual {v0}, Lcom/biznessapps/model/PodcastItem;->getAudioUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/biznessapps/player/PlayerServiceAccessor;->play(Ljava/lang/String;)V

    .line 191
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! currentPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment$6;->this$0:Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    invoke-static {v2}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->access$000(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! items.get(currentPosition).getAudioUrl() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment$6;->this$0:Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->access$1000(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment$6;->this$0:Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    invoke-static {v3}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->access$000(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/PodcastItem;

    invoke-virtual {v0}, Lcom/biznessapps/model/PodcastItem;->getAudioUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/PodcastsListFragment$6;->this$0:Lcom/biznessapps/fragments/lists/PodcastsListFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/lists/PodcastsListFragment;->access$800(Lcom/biznessapps/fragments/lists/PodcastsListFragment;)V

    .line 195
    return-void
.end method
