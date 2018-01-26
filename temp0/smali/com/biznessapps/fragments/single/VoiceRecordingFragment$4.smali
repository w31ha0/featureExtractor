.class Lcom/biznessapps/fragments/single/VoiceRecordingFragment$4;
.super Ljava/lang/Object;
.source "VoiceRecordingFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->startPlaying()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/single/VoiceRecordingFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/single/VoiceRecordingFragment;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment$4;->this$0:Lcom/biznessapps/fragments/single/VoiceRecordingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 214
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "!!!!!!!!!!!!!!!!!!!!!!!!!!!! on completion"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment$4;->this$0:Lcom/biznessapps/fragments/single/VoiceRecordingFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->access$600(Lcom/biznessapps/fragments/single/VoiceRecordingFragment;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 216
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment$4;->this$0:Lcom/biznessapps/fragments/single/VoiceRecordingFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->access$002(Lcom/biznessapps/fragments/single/VoiceRecordingFragment;Z)Z

    .line 217
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment$4;->this$0:Lcom/biznessapps/fragments/single/VoiceRecordingFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->access$200(Lcom/biznessapps/fragments/single/VoiceRecordingFragment;)V

    .line 218
    return-void
.end method
