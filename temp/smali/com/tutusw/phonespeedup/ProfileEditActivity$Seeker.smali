.class Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;
.super Ljava/lang/Object;
.source "ProfileEditActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutusw/phonespeedup/ProfileEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Seeker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;


# direct methods
.method private constructor <init>(Lcom/tutusw/phonespeedup/ProfileEditActivity;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tutusw/phonespeedup/ProfileEditActivity;Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;)V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;-><init>(Lcom/tutusw/phonespeedup/ProfileEditActivity;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const-string v5, "\u00b0F)"

    const-string v4, "\u00b0C ("

    .line 267
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->maxSeek:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->maxMeter:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freqText:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->minSeek:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->minMeter:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freqText:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramSeek:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_5

    .line 274
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->conditionPosition:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 275
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramMeter:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v2, v2, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->conditionPosition:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 278
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramMeter:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v2, v2, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    const-string v2, "\u00b0C ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v3, v3, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramSeek:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->access$0(Lcom/tutusw/phonespeedup/ProfileEditActivity;F)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u00b0F)"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 281
    :cond_4
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->conditionPosition:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramMeter:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v2, v2, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    const-string v2, "\u00b0C ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v3, v3, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramSeek:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->access$0(Lcom/tutusw/phonespeedup/ProfileEditActivity;F)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u00b0F)"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 286
    :cond_5
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->prioritySeek:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->priorityMeter:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfileEditActivity;->prioritySeek:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 294
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->maxSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfileEditActivity;->minSeek:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->minSeek:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->maxSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->maxSeek:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->minSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
