.class Lcom/skipping/TrainingActivity$4;
.super Ljava/lang/Object;
.source "TrainingActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skipping/TrainingActivity;->doTimerTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/skipping/TrainingActivity;

.field private final synthetic val$mAudioManager:Landroid/media/AudioManager;

.field private final synthetic val$originalVolume:I


# direct methods
.method constructor <init>(Lcom/skipping/TrainingActivity;Landroid/media/AudioManager;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skipping/TrainingActivity$4;->this$0:Lcom/skipping/TrainingActivity;

    iput-object p2, p0, Lcom/skipping/TrainingActivity$4;->val$mAudioManager:Landroid/media/AudioManager;

    iput p3, p0, Lcom/skipping/TrainingActivity$4;->val$originalVolume:I

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 486
    iget-object v0, p0, Lcom/skipping/TrainingActivity$4;->val$mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/skipping/TrainingActivity$4;->val$originalVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 487
    return-void
.end method
