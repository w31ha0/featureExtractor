.class Lcom/skipping/TrainingActivity$2;
.super Ljava/lang/Object;
.source "TrainingActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skipping/TrainingActivity;->Lock(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field originalProgress:I

.field final synthetic this$0:Lcom/skipping/TrainingActivity;

.field private final synthetic val$dialog:Landroid/app/Dialog;

.field private final synthetic val$sk:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/skipping/TrainingActivity;Landroid/widget/SeekBar;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skipping/TrainingActivity$2;->this$0:Lcom/skipping/TrainingActivity;

    iput-object p2, p0, Lcom/skipping/TrainingActivity$2;->val$sk:Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/skipping/TrainingActivity$2;->val$dialog:Landroid/app/Dialog;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 223
    if-eqz p3, :cond_1

    .line 225
    iget v0, p0, Lcom/skipping/TrainingActivity$2;->originalProgress:I

    add-int/lit8 v0, v0, 0x18

    if-gt p2, v0, :cond_0

    .line 226
    iget v0, p0, Lcom/skipping/TrainingActivity$2;->originalProgress:I

    add-int/lit8 v0, v0, -0x18

    if-ge p2, v0, :cond_2

    .line 227
    :cond_0
    iget v0, p0, Lcom/skipping/TrainingActivity$2;->originalProgress:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 239
    :cond_1
    :goto_0
    return-void

    .line 232
    :cond_2
    iput p2, p0, Lcom/skipping/TrainingActivity$2;->originalProgress:I

    .line 233
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/skipping/TrainingActivity$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/skipping/TrainingActivity$2;->originalProgress:I

    .line 218
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/skipping/TrainingActivity$2;->val$sk:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 212
    return-void
.end method
